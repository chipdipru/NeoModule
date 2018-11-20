/*
********************************************************************************
* COPYRIGHT(c) ЗАО «ЧИП и ДИП», 2018
* 
* Программное обеспечение предоставляется на условиях «как есть» (as is).
* При распространении указание автора обязательно.
********************************************************************************
*/




#ifndef __NEO_STM_BOARD_H
#define __NEO_STM_BOARD_H

#include "stm32f030x6.h"



#define       DATA_SIZE_PIN                0
#define       FUNCTION_PIN                 1
#define       CONFIG_GPIO                  GPIOF

#define       DIN_PIN                      6
#define       DIN_GPIO                     GPIOA

#define       DOUT_PIN                     7
#define       DOUT_GPIO                    GPIOA

#define       NC_PIN                       1
#define       NC_GPIO                      GPIOB

//выходы
#define       OUT_GPIO                     GPIOA
#define       OUT_PIN_0                    0
#define       OUT_PIN_1                    1
#define       OUT_PIN_2                    2
#define       OUT_PIN_3                    3
#define       OUT_PIN_4                    5
#define       OUT_PIN_5                    4
#define       OUT_PIN_6                    9
#define       OUT_PIN_7                    10

#define       OUTPUTS_COUNT                8

//таймеры для ШИМ
#define       PWM_GPIO                     GPIOA
#define       PWM_1_PIN                    4
#define       PWM_2_PIN                    9
#define       PWM_3_PIN                    10
#define       PWM_1_TIM_AF                 4
#define       PWM_2_TIM_AF                 2
#define       PWM_3_TIM_AF                 2
#define       PWM_1_TIMER                  TIM14
#define       PWM_2_TIMER                  TIM1
#define       PWM_3_TIMER                  TIM1
#define       PWM_1_CLK_EN                 RCC_APB1ENR_TIM14EN
#define       PWM_2_CLK_EN                 RCC_APB2ENR_TIM1EN
#define       PWM_3_CLK_EN                 RCC_APB2ENR_TIM1EN


#define       MAX_BRIGHTNESS               255
#define       PWM_PSC                      187
#define       PWM_ARR                      (MAX_BRIGHTNESS - 1)

#define       DATA_AVAILABLE               1

#define       FUNCTION_PWM                 0
#define       FUNCTION_OUTPUT              1


extern const uint16_t OUTPUTS[OUTPUTS_COUNT];


void Module_Init();

void LEDReset();

void SetPWMs(uint8_t *Data);

void SetOUTs(uint8_t *Data);


#endif //__NEO_STM_BOARD_H


