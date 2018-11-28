/*
********************************************************************************
* COPYRIGHT(c) ��� ���� � ��ϻ, 2018
* 
* ����������� ����������� ��������������� �� �������� ���� ����� (as is).
* ��� ��������������� �������� ������ �����������.
********************************************************************************
*/




#ifndef __NEO_LED_H
#define __NEO_LED_H


#include "NeoSTM_board.h"


//������ ��� ��� DOUT
#define       DOUT_TIM_AF                  5
#define       DOUT_TIMER                   TIM17
#define       DOUT_TIMER_ENR               APB2ENR
#define       DOUT_TIMER_CLK_EN            RCC_APB2ENR_TIM17EN
#define       DOUT_TIMER_IRQ               TIM17_IRQn
#define       DOUT_TIMER_PSC               (5 - 1) //������� 9,6 ���
#define       DOUT_TIMER_ARR               (12 - 1) //������� 800 ���
#define       DOUT_DMA_CHANNEL             DMA1_Channel1
#define       DOUT_DMA_IRQ                 DMA1_Channel1_IRQn

//������ ��� DIN
#define       DIN_TIM_AF                   1
#define       DIN_TIMER                    TIM3
#define       DIN_TIMER_ENR                APB1ENR
#define       DIN_TIMER_CLK_EN             RCC_APB1ENR_TIM3EN
#define       DIN_TIMER_IRQ                TIM3_IRQn
#define       DIN_TIMER_PSC                (4 - 1) //������� 12 ���
#define       DIN_DMA_CHANNEL              DMA1_Channel4
#define       DIN_DMA_IRQ                  DMA1_Channel4_5_IRQn
#define       DIN_TIMER_RST_VAL            600//����� ����� 50 ���


#define       BITS_BUFFER_SIZE             3840//3712

#define       LED_T0H                      3
#define       LED_T1H                      8
#define       LED_T1H_THRESHOLD            (LED_T1H - 3)
#define       LED_T1H_OUT                  10
#define       LED_T1H_MAX                  (LED_T1H_OUT + 105)
#define       LED_T0H_OUT                  2

#define       DATA_SIZE_24BITS             0
#define       DATA_SIZE_32BITS             1

#define       BITS24_LEDS_COUNT_MAX        (BITS_BUFFER_SIZE / 24)
#define       BITS32_LEDS_COUNT_MAX        (BITS_BUFFER_SIZE / 32)

#define       DATA_BYTES_MAX               4

#define       EXTRA_OUT_BITS               24//1


void TIM3_IRQHandler(void);

void DMA1_Channel1_IRQHandler(void);

void NeoGetData(uint8_t *Buffer);

void NeoStart();

void NeoResume();

void NeoInit(uint8_t DataSize, void (*ResSignalAction)(void));


#endif //__NEO_LED_H




