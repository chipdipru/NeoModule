/*
********************************************************************************
* COPYRIGHT(c) ЗАО «ЧИП и ДИП», 2018
* 
* Программное обеспечение предоставляется на условиях «как есть» (as is).
* При распространении указание автора обязательно.
********************************************************************************
*/


#include "NeoLED.h"


static volatile uint8_t DataBuffer[BITS_BUFFER_SIZE + EXTRA_OUT_BITS];
static void (*ResetAction)(void);
static uint8_t LEDsCountMax;
static uint8_t LEDDataSize;

//------------------------------------------------------------------------------
void NeoInit(uint8_t DataSize, void (*ResSignalAction)(void))
{ 
  if (DataSize == DATA_SIZE_24BITS)
  {
    LEDDataSize = 24;
    LEDsCountMax = BITS24_LEDS_COUNT_MAX;
  }
  else
  {
    LEDDataSize = 32;
    LEDsCountMax = BITS32_LEDS_COUNT_MAX;
  }
  
  DIN_GPIO->MODER |= (2 << (2 * DIN_PIN));
  DIN_GPIO->AFR[0] |= (DIN_TIM_AF << (4 * DIN_PIN));
  RCC->DIN_TIMER_ENR |= DIN_TIMER_CLK_EN;
  DIN_TIMER->PSC = DIN_TIMER_PSC;
  DIN_TIMER->CCMR1 = TIM_CCMR1_CC1S_0;
  DIN_TIMER->CCR3 = DIN_TIMER_RST_VAL;
  DIN_TIMER->SMCR = TIM_SMCR_TS_2 | TIM_SMCR_SMS_2;
  DIN_TIMER->CCER = TIM_CCER_CC1E | TIM_CCER_CC1P; 
  DIN_TIMER->DIER = TIM_DIER_CC1DE | TIM_DIER_TIE;
  NVIC_EnableIRQ(DIN_TIMER_IRQ);
  NVIC_SetPriority(DIN_TIMER_IRQ, 0);
    
  RCC->AHBENR |= RCC_AHBENR_DMAEN;
  DIN_DMA_CHANNEL->CPAR = (uint32_t) (&(DIN_TIMER->CCR1));
  DIN_DMA_CHANNEL->CMAR = (uint32_t)(DataBuffer); 
  DIN_DMA_CHANNEL->CNDTR = LEDDataSize * LEDsCountMax; 
  DIN_DMA_CHANNEL->CCR = DMA_CCR_MINC;
  DIN_DMA_CHANNEL->CCR |= DMA_CCR_EN;
  
  DOUT_DMA_CHANNEL->CPAR = (uint32_t) (&(DOUT_TIMER->CCR1));
  DOUT_DMA_CHANNEL->CMAR = (uint32_t)(&DataBuffer[LEDDataSize + 1]);
  DOUT_DMA_CHANNEL->CCR = DMA_CCR_MINC | DMA_CCR_DIR | DMA_CCR_PSIZE_0 | DMA_CCR_TCIE;
  NVIC_EnableIRQ(DOUT_DMA_IRQ);
  NVIC_SetPriority(DOUT_DMA_IRQ, 0);
      
  DOUT_GPIO->MODER |= (2 << (2 * DOUT_PIN));
  DOUT_GPIO->AFR[0] |= (DOUT_TIM_AF << (4 * DOUT_PIN));
  DOUT_GPIO->OSPEEDR |= (3 << (2 * DOUT_PIN));
  DOUT_GPIO->PUPDR |= (1 << (2 * DOUT_PIN));
  RCC->DOUT_TIMER_ENR |= DOUT_TIMER_CLK_EN;
  DOUT_TIMER->PSC = DOUT_TIMER_PSC;
  DOUT_TIMER->ARR = DOUT_TIMER_ARR;  
  DOUT_TIMER->CCMR1 = TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1M_1 | TIM_CCMR1_OC1PE;
  DOUT_TIMER->BDTR = TIM_BDTR_MOE;
  DOUT_TIMER->CCER = TIM_CCER_CC1E;
  DOUT_TIMER->SR = 0;
    
  ResetAction = ResSignalAction;
  
  DIN_TIMER->EGR = TIM_EGR_UG;
  DIN_TIMER->SR = 0;  
}
//------------------------------------------------------------------------------
void TIM3_IRQHandler(void)
{
  uint16_t Status = DIN_TIMER->SR;
  DIN_TIMER->SR = 0;
    
  if ((Status & TIM_SR_TIF) == TIM_SR_TIF)
    DIN_TIMER->DIER = TIM_DIER_CC1DE | TIM_DIER_CC3IE;
  else if ((Status & TIM_SR_CC3IF) == TIM_SR_CC3IF)
  {
    DIN_TIMER->CR1 &= ~TIM_CR1_CEN;
    DIN_TIMER->SR = 0;
    DIN_TIMER->DIER = 0;
        
    DMA1->IFCR |= DMA_IFCR_CGIF4;
    DIN_DMA_CHANNEL->CCR &= ~DMA_CCR_EN;
    
    uint16_t DataCount = LEDsCountMax * LEDDataSize - DIN_DMA_CHANNEL->CNDTR - LEDDataSize;
    
    if ((DIN_DMA_CHANNEL->CNDTR != LEDsCountMax * LEDDataSize)
     /*&& ((DIN_DMA_CHANNEL->CNDTR % LEDDataSize) == 0)*/
     && (DataCount != 0) && (DataCount <= ((LEDsCountMax - 1) * LEDDataSize)))
    {
      for (uint16_t i = 0; i < DataCount; i++)
      {
        if (DataBuffer[LEDDataSize + i] >= LED_T1H_THRESHOLD)
          DataBuffer[LEDDataSize + i] = LED_T1H_OUT;
        else
          DataBuffer[LEDDataSize + i] = LED_T0H_OUT;
      }
      
      for (uint16_t i = 0; i < EXTRA_OUT_BITS; i++)
        DataBuffer[LEDDataSize + DataCount + i] = LED_T0H_OUT;
      DataCount += EXTRA_OUT_BITS;
      
      
      DOUT_DMA_CHANNEL->CNDTR = DataCount - 1;      
      DOUT_DMA_CHANNEL->CCR |= DMA_CCR_EN;
      DOUT_TIMER->CCR1 = DataBuffer[LEDDataSize];
      DOUT_TIMER->DIER = TIM_DIER_CC1DE;      
      DOUT_TIMER->CR1 |= TIM_CR1_CEN;
    }
    else
    {
      NeoResume();
    }  
  }
}
//------------------------------------------------------------------------------
void DMA1_Channel1_IRQHandler(void)
{
  DOUT_TIMER->CR1 &= ~TIM_CR1_CEN;
  DOUT_TIMER->SR = 0;
  DOUT_TIMER->DIER = 0;
  DMA1->IFCR |= DMA_IFCR_CGIF1;
  DOUT_DMA_CHANNEL->CCR &= ~DMA_CCR_EN;
  
  ResetAction();
}
//------------------------------------------------------------------------------
void NeoGetData(uint8_t *Buffer)
{ 
  if (DIN_DMA_CHANNEL->CNDTR != LEDsCountMax * LEDDataSize)
  {
    Buffer[0] = 0;
    Buffer[1] = 0;
    Buffer[2] = 0;
    Buffer[3] = 0;  
  
    for (uint8_t BitNum = 0; BitNum < LEDDataSize; BitNum++)
    {      
      uint8_t DataBit = 0;
      if ((DataBuffer[BitNum] >= LED_T1H_THRESHOLD) && (DataBuffer[BitNum] <= LED_T1H_MAX))
        DataBit = 1;
      
      Buffer[BitNum / 8] |= DataBit << (7 - (BitNum % 8));
    }
  }
}
//------------------------------------------------------------------------------
void NeoStart()
{
  DIN_TIMER->CR1 |= TIM_CR1_CEN;
}
//------------------------------------------------------------------------------
void NeoResume()
{
  DIN_DMA_CHANNEL->CNDTR = LEDDataSize * LEDsCountMax;
  DIN_DMA_CHANNEL->CCR |= DMA_CCR_EN;  
  DIN_TIMER->DIER = TIM_DIER_CC1DE | TIM_DIER_TIE;
  DIN_TIMER->CR1 |= TIM_CR1_CEN;
}



