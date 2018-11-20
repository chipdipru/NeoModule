/*
********************************************************************************
* COPYRIGHT(c) ЗАО «ЧИП и ДИП», 2018
* 
* Программное обеспечение предоставляется на условиях «как есть» (as is).
* При распространении указание автора обязательно.
********************************************************************************
*/


#include "NeoSTM_board.h"
#include "NeoLED.h"


volatile uint8_t State = 0;
static void (*DataProcessing)(uint8_t*);

int main()
{
  Module_Init();
  
  for(;;)
  {
    __WFI();
    
    if (State == DATA_AVAILABLE)
    {
      State = 0;
      
      uint8_t Data[DATA_BYTES_MAX];
      NeoGetData(Data);
      DataProcessing(Data);      
      NeoResume();
    }
  }
}
//------------------------------------------------------------------------------
void Module_Init()
{
  //HSI, PLL, 48 MHz
  FLASH->ACR = FLASH_ACR_PRFTBE | (uint32_t)FLASH_ACR_LATENCY;  
  RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC_HSI_DIV2 | RCC_CFGR_PLLMUL12);
  RCC->CR |= RCC_CR_PLLON;
  while((RCC->CR & RCC_CR_PLLRDY) == 0);
  RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
  RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;
  while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)RCC_CFGR_SWS_PLL);
  
  RCC->AHBENR |= RCC_AHBENR_GPIOAEN | RCC_AHBENR_GPIOFEN;
  
  uint8_t Config = CONFIG_GPIO->IDR & ((1 << DATA_SIZE_PIN) || (1 << FUNCTION_PIN));
  
  RCC->AHBENR &= ~RCC_AHBENR_GPIOFEN;
  
  NeoInit(((Config & (1 << DATA_SIZE_PIN)) >> DATA_SIZE_PIN), &LEDReset);
  
  if (((Config & (1 << FUNCTION_PIN)) >> FUNCTION_PIN) == FUNCTION_PWM)
  {
    DataProcessing = SetPWMs;
    
    PWM_GPIO->AFR[1] |= (PWM_2_TIM_AF << (4 * (PWM_2_PIN - 8))) | (PWM_3_TIM_AF << (4 * (PWM_3_PIN - 8)));
    PWM_GPIO->AFR[0] |= (PWM_1_TIM_AF << (4 * PWM_1_PIN));
    PWM_GPIO->MODER |= ((2 << (2 * PWM_1_PIN)) | (2 << (2 * PWM_2_PIN)) | (2 << (2 * PWM_3_PIN)));
    RCC->APB2ENR |= PWM_2_CLK_EN;
    RCC->APB1ENR |= PWM_1_CLK_EN;
  
    PWM_1_TIMER->PSC = PWM_PSC;
    PWM_1_TIMER->ARR = PWM_ARR;
    PWM_1_TIMER->CCR1 = 0;
    PWM_1_TIMER->CCMR1 = TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1M_1 | TIM_CCMR1_OC1PE;
    PWM_1_TIMER->CCER = TIM_CCER_CC1E;
  
    PWM_2_TIMER->PSC = PWM_PSC;
    PWM_2_TIMER->ARR = PWM_ARR;
    PWM_2_TIMER->CCR1 = 0;
    PWM_2_TIMER->CCMR1 = TIM_CCMR1_OC2M_2 | TIM_CCMR1_OC2M_1 | TIM_CCMR1_OC2PE;
    PWM_2_TIMER->CCMR2 = TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1 | TIM_CCMR2_OC3PE;
    PWM_2_TIMER->BDTR = TIM_BDTR_MOE;
    PWM_2_TIMER->CCER = TIM_CCER_CC2E | TIM_CCER_CC3E;
  
    PWM_1_TIMER->EGR = TIM_EGR_UG;
    PWM_2_TIMER->EGR = TIM_EGR_UG;
    PWM_1_TIMER->CR1 |= TIM_CR1_CEN | TIM_CR1_ARPE;
    PWM_2_TIMER->CR1 |= TIM_CR1_CEN | TIM_CR1_ARPE;
  }
  
  else
  {
    DataProcessing = SetOUTs;
    
    OUT_GPIO->MODER |= (1 << (2 * OUT_PIN_0)) | (1 << (2 * OUT_PIN_1)) | (1 << (2 * OUT_PIN_2)) | (1 << (2 * OUT_PIN_3)) | \
                       (1 << (2 * OUT_PIN_4)) | (1 << (2 * OUT_PIN_5)) | (1 << (2 * OUT_PIN_6)) | (1 << (2 * OUT_PIN_7));
  }
  
  NeoStart();
}
//------------------------------------------------------------------------------
void LEDReset()
{
  State = DATA_AVAILABLE;
}
//------------------------------------------------------------------------------
void SetPWMs(uint8_t *Data)
{
  PWM_1_TIMER->CCR1 = Data[2];
  PWM_2_TIMER->CCR2 = Data[0];
  PWM_3_TIMER->CCR3 = Data[1];
}
//------------------------------------------------------------------------------
void SetOUTs(uint8_t *Data)
{
  for (uint8_t i = 0; i < OUTPUTS_COUNT; i++)
  {
    if ((Data[0] & (1 << i)) == (1 << i))
      OUT_GPIO->ODR |= OUTPUTS[i];
    else
      OUT_GPIO->ODR &= ~OUTPUTS[i];
  }
}


