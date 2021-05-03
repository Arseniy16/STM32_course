/*
 * This project is Lab08-02
 * Rotate encoder and change sound frequency of the piezo speaker and 
 * show on the 7-segment indicator frequency   
 */
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_tim.h"

#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"

/*--------------------------------------------- */
/*
 * This is a special bit_mask to turn on segments on an indicator 
 */
#define bits(PIN_7, PIN_6, PIN_5, PIN_4, PIN_3, PIN_2, PIN_1, PIN_0) \
  ((PIN_7) * (LL_GPIO_PIN_7) | \
   (PIN_6) * (LL_GPIO_PIN_6) | \
   (PIN_5) * (LL_GPIO_PIN_5) | \
   (PIN_4) * (LL_GPIO_PIN_4) | \
   (PIN_3) * (LL_GPIO_PIN_3) | \
   (PIN_2) * (LL_GPIO_PIN_2) | \
   (PIN_1) * (LL_GPIO_PIN_1) | \
   (PIN_0) * (LL_GPIO_PIN_0)   )
/*---------------------------------------------*/
/*
 * it's a special mask to turn on paticular leds on indicator
 */
uint32_t mask_indicator(uint32_t mask)
{
  return bits((mask & (1<<7)) >> 7, (mask & (1<<6)) >> 6, (mask & (1<<5)) >> 5, (mask & (1<<4)) >> 4, \
        (mask & (1<<3)) >> 3, (mask & (1<<2)) >> 2, (mask & (1<<1)) >> 1, mask & 1);
}
/*---------------------------------------------*/

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
/*---------------------------------------------*/
static void gpio_config(void)
{
    /*
    * Init two default LEDs
    */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    /*
    * Init main ports for indicators
    * from MSB to LSB -> 3_2_1_0    
    */
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
    /*
    * Init port for USER button
    */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);
    /*
    * Init ports for indicator
    */
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
/*---------------------------------------------*/
/*
 * This function is for displaying number in decimal (0-9999)
 */
void dec_display(uint32_t number)
{
    static uint32_t digit_num = 0;
    uint16_t out = 0;

    const uint16_t decoder[] = 
    {
    bits(0,0,1,1,1,1,1,1), //0
    bits(0,0,0,0,0,1,1,0), //1
    bits(0,1,0,1,1,0,1,1), //2
    bits(0,1,0,0,1,1,1,1), //3
    bits(0,1,1,0,0,1,1,0), //4
    bits(0,1,1,0,1,1,0,1), //5
    bits(0,1,1,1,1,1,0,1), //6
    bits(0,0,0,0,0,1,1,1), //7
    bits(0,1,1,1,1,1,1,1), //8
    bits(0,1,1,0,1,1,1,1), //9
    }; 

    //update indicator
    LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));

    //turn on a particular indicator
    LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1<<digit_num));

    if(digit_num == 0) out = decoder[(number % 10)];
    if(digit_num == 1) out = decoder[(number / 10) % 10];
    if(digit_num == 2) out = decoder[(number / 100) % 10];
    if(digit_num == 3) out = decoder[(number / 1000) % 10];

    LL_GPIO_WriteOutputPort(GPIOB, mask_indicator(out));

    digit_num = (digit_num + 1) % 4;
    
    return; 
}
/*---------------------------------------------*/
/*
 * Configure timer to encoder mode 
 */
static void timers_config_encoder(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_1, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_5, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_1, LL_GPIO_AF_2);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_5, LL_GPIO_AF_2);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_1, LL_GPIO_PULL_UP);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_5, LL_GPIO_PULL_UP);

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);
    /* (1) Configure TI1FP1 on TI1 (CC1S = 01)
     configure TI1FP2 on TI2 (CC2S = 01) */
    /* (2) Configure TI1FP1 and TI2FP2 non inverted (CC1P = CC2P = 0, reset value) */
    /* (3) Configure both inputs are active on both rising and falling edges
    (SMS = 011) */ 
    LL_TIM_IC_SetActiveInput(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_ACTIVEINPUT_DIRECTTI); // 1
    LL_TIM_IC_SetActiveInput(TIM2, LL_TIM_CHANNEL_CH2, LL_TIM_ACTIVEINPUT_DIRECTTI); // 1
    LL_TIM_IC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_ETR_POLARITY_NONINVERTED);  // 2
    LL_TIM_IC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH2, LL_TIM_ETR_POLARITY_NONINVERTED);  // 2
    LL_TIM_SetEncoderMode(TIM2, LL_TIM_ENCODERMODE_X4_TI12); // 3
    //LL_TIM_IC_SetFilter(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_IC_FILTER_FDIV16_N5);
    //LL_TIM_IC_SetFilter(TIM2, LL_TIM_CHANNEL_CH2, LL_TIM_IC_FILTER_FDIV16_N5);
    LL_TIM_SetAutoReload(TIM2, 999); 
    LL_TIM_EnableCounter(TIM2);

    return;
}
/*---------------------------------------------*/
/*
 * Configure timer to output compare mode
 */
static void timers_config_PWM(void)
{
    /*
     * Configure output channel
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_6, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_6, LL_GPIO_AF_1);

    /*
     * Setup timer to output compare mode
     */

     //48 1000000

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM3);
    LL_TIM_SetPrescaler(TIM3, 47); 
    LL_TIM_SetAutoReload(TIM3, 9999); //output freq = 100 Gz
    LL_TIM_OC_SetCompareCH1(TIM3, 965); //this value for max volume of piezo speaker
    LL_TIM_CC_EnableChannel(TIM3, LL_TIM_CHANNEL_CH1);
    LL_TIM_OC_SetPolarity(TIM3, LL_TIM_CHANNEL_CH1, LL_TIM_OCPOLARITY_HIGH);
    //LL_TIM_OC_SetMode(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_TOGGLE);
    LL_TIM_OC_SetMode(TIM3, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_PWM1);
    LL_TIM_SetCounterMode(TIM3, LL_TIM_COUNTERMODE_UP);
    LL_TIM_EnableIT_CC1(TIM3);
    LL_TIM_EnableCounter(TIM3);
    /*
     * Setup NVIC
     */
    NVIC_EnableIRQ(TIM3_IRQn);
    NVIC_SetPriority(TIM3_IRQn, 2);

    return ;
}
/*---------------------------------------------*/
/*
 * Configure system timer to time 1 ms
 */
static void systick_config(void)
{
    LL_InitTick(48000000, 1000);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 1);
    return;
}
/*---------------------------------------------*/
/*
 * Handler for system timer
 */
void SysTick_Handler(void)
{
    LL_TIM_OC_SetCompareCH1(TIM3, (uint32_t)(0.965 * LL_TIM_GetCounter(TIM2))); //do always max volume on piezo
    LL_TIM_SetAutoReload(TIM3, LL_TIM_GetCounter(TIM2));  //change ARR to change frequency
    
    //show on indicator in 10^2 kGz
    dec_display((uint32_t)(10000 / LL_TIM_GetCounter(TIM2))); //show the frequency on indicator
    return;
}
/*---------------------------------------------*/
int main()
{
    rcc_config();
    gpio_config();
    timers_config_encoder();
    timers_config_PWM();
    systick_config();

    while (1);
    return 0;
}
