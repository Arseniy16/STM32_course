/*
 * This example demonstrates how to use EXTI and System Timer
 */
//#include <stdio.h>
//#include <stdlib.h>
//#include <string.h>
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"


/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */
static void rcc_config()
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

static void gpio_config(void)
{

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);

    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
    
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);

    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_4, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_5, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_6, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_7, LL_GPIO_MODE_OUTPUT);

    return;
}


//this function is for displaying number (0-ffff) 
void dyn_display(uint32_t number)
{
    
    uint32_t out = 0;
    static uint16_t digit_num = 0;

    //const uint32_t decoder[] = {0x3f, 0x6, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x7, 0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71};
    const uint32_t decoder[] = {0x3f, 0x6, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x7, 0x7f, 0x6f};
    LL_GPIO_WriteOutputPort(GPIOC, 0b1111);

    switch(digit_num)
    {
        case 0: 
        {
            LL_GPIO_WriteOutputPort(GPIOC, ~LL_GPIO_PIN_0);
            out = decoder[number & 0x000f]; 
            break;
        }
        case 1:
        {
            LL_GPIO_WriteOutputPort(GPIOC, ~LL_GPIO_PIN_1);
            out = decoder[(number & 0x00f0)>>4];
            break;

        } 
        case 2:
        {
            LL_GPIO_WriteOutputPort(GPIOC, ~LL_GPIO_PIN_2);
            out = decoder[(number & 0x0f00) >> 8];
            break;
        } 
        case 3:
        {
            LL_GPIO_WriteOutputPort(GPIOC, ~LL_GPIO_PIN_3);
            out = decoder[(number & 0xf000) >> 12]; 
            break;
        } 
        default: break;
    }

    LL_GPIO_WriteOutputPort(GPIOB, out);
    digit_num = (digit_num + 1) % 4;

    return;
}


void double_dabble(int n, const unsigned int *arr, char **result)
{
    int nbits = 16*n;         /* length of arr in bits */
    int nscratch = nbits/3;   /* length of scratch in bytes */
    char *scratch = calloc(1 + nscratch, sizeof *scratch);
    int i, j, k;
    int smin = nscratch-2;    /* speed optimization */

    for (i=0; i < n; ++i) {
        for (j=0; j < 16; ++j) {
            /* This bit will be shifted in on the right. */
            int shifted_in = (arr[i] & (1 << (15-j)))? 1: 0;

            /* Add 3 everywhere that scratch[k] >= 5. */
            for (k=smin; k < nscratch; ++k)
              scratch[k] += (scratch[k] >= 5)? 3: 0;

            /* Shift scratch to the left by one position. */
            if (scratch[smin] >= 8)
              smin -= 1;
            for (k=smin; k < nscratch-1; ++k) {
                scratch[k] <<= 1;
                scratch[k] &= 0xF;
                scratch[k] |= (scratch[k+1] >= 8);
            }

            /* Shift in the new bit from arr. */
            scratch[nscratch-1] <<= 1;
            scratch[nscratch-1] &= 0xF;
            scratch[nscratch-1] |= shifted_in;
        }
    }

    /* Remove leading zeros from the scratch space. */
    for (k=0; k < nscratch-1; ++k)
      if (scratch[k] != 0) break;
    nscratch -= k;
    memmove(scratch, scratch+k, nscratch+1);

    /* Convert the scratch space from BCD digits to ASCII. */
    for (k=0; k < nscratch; ++k)
      scratch[k] += '0';

    /* Resize and return the resulting string. */
    *result = realloc(scratch, nscratch+1);
    return;
}

static int milliseconds = 0;
static int count = 0;
static int main_cnt = 0;
static int counter_top = 1000;
/*
 * Configure system timer to time 1 ms
 */
static void systick_config(void)
{
    LL_InitTick(48000000, 1000);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 0);
    return;
}

/*
 * Handler for system timer
 * Count up to counter_top then switch led
 * (to make blinking more visible)
 */
void SysTick_Handler(void)
{
    milliseconds++;
    
    unsigned int arr[] = {count};
    
    char *text = NULL;
    
    int value = 0;

    double_dabble(1, arr, &text);
    
    value = atoi(text);
    
    dyn_display(value); 
    //printf("value = %d\n", value);
    free(text);

    //dyn_display(count);    

    //static int counter = 0;
    //counter = (counter + 1) % counter_top;
    if (!(milliseconds % counter_top))
    {
        
        if((main_cnt % 10 ) == 9) count += 6;
        count++;
        main_cnt++;
    }    

    return;
}


int main(void)
{
    rcc_config();
    gpio_config();
    systick_config();

    while (1);
    return 0;
}
