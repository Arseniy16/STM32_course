/*
 * This project is Lab09-01
 * This program shows the communication through the USART
 * The value is transmited to the 7-segment indicator  
 */
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_usart.h"

#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"
///////////////////////////////////////////
/*---------------GLOBAL------------------*/
/*---------------------------------------*/
uint16_t value = 0; 
uint16_t count = 0;
//\/\/\/\/\\/\/\/\/\\/\/\/\/\\/\/\/\/\\/\//

/*---------------------------------------------
/*
 * Structure for communication
 */
typedef struct {
    uint8_t cmd;
    uint8_t params[10];
    uint8_t active;
} uart_req_t;

static uart_req_t uart_req;

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
static uint32_t mask_indicator(uint32_t mask)
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

    return;
}

/*
 * Init LEDs, the indicator and other
 */
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

/*
 * Initialize USART module and associated pins
 */
static void usart_config(void)
{
    /*
     * Setting USART pins
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    //USART1_TX
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_9, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_8_15(GPIOA, LL_GPIO_PIN_9, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_9, LL_GPIO_SPEED_FREQ_HIGH);
    //USART1_RX
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_10, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_8_15(GPIOA, LL_GPIO_PIN_10, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_10, LL_GPIO_SPEED_FREQ_HIGH);
    /*
     * USART Set clock source
     */
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_USART1);
    LL_RCC_SetUSARTClockSource(LL_RCC_USART1_CLKSOURCE_PCLK1);
    /*
     * USART Setting
     */
    LL_USART_SetTransferDirection(USART1, LL_USART_DIRECTION_TX_RX);
    LL_USART_SetParity(USART1, LL_USART_PARITY_NONE);
    LL_USART_SetDataWidth(USART1, LL_USART_DATAWIDTH_8B);
    LL_USART_SetStopBitsLength(USART1, LL_USART_STOPBITS_1);
    LL_USART_SetTransferBitOrder(USART1, LL_USART_BITORDER_LSBFIRST);
    LL_USART_SetBaudRate(USART1, SystemCoreClock,
                         LL_USART_OVERSAMPLING_16, 115200);
    LL_USART_EnableIT_IDLE(USART1);
    LL_USART_EnableIT_RXNE(USART1);
    /*
     * USART turn on
     */
    LL_USART_Enable(USART1);
    while (!(LL_USART_IsActiveFlag_TEACK(USART1) &&
             LL_USART_IsActiveFlag_REACK(USART1)));
    /*
     * Turn on NVIC interrupt line
     */
    NVIC_SetPriority(USART1_IRQn, 0);
    NVIC_EnableIRQ(USART1_IRQn);
    return;
}
/*---------------------------------------------*/
/* 
 * This function is for displaying number in decimal (0-9999)
 */
static void dec_display(uint32_t number)
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

    if (digit_num == 0) out = decoder[(number % 10)];
    if (digit_num == 1) out = decoder[(number / 10) % 10];
    if (digit_num == 2) out = decoder[(number / 100) % 10];
    if (digit_num == 3) out = decoder[(number / 1000) % 10];

    LL_GPIO_WriteOutputPort(GPIOB, mask_indicator(out));

    digit_num = (digit_num + 1) % 4;
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
/*
 * Handler for system timer
 */
void SysTick_Handler(void)
{
    dec_display(value); 
    return;
}
/*---------------------------------------------*/

void USART1_IRQHandler(void)
{
    static uint8_t pos = 0;
    
    if (LL_USART_IsActiveFlag_RXNE(USART1)) 
    {
        uart_req.params[pos] = LL_USART_ReceiveData8(USART1);
        pos++;
        count++;
    }
    if (LL_USART_IsActiveFlag_IDLE(USART1)) 
    {
        pos = 0;
        uart_req.active = 1;
        LL_USART_ClearFlag_IDLE(USART1);
    }
    return;
}
/*---------------------------------------------*/

static void manage_requests(void) 
{
    uint16_t is_ok = 0, temp = 0;
   
    if (!uart_req.active)
        return;
    
    /*
     * for output on the indicator 
     */
    value = 0;
    
    // to limit value contains <= 4 digits 
    if (count > 4) 
    {
        count = 4;
        is_ok = 0;
    }
    else is_ok = 1;

    for (uint8_t i = 0; (i < count) && (i < 4); i++)
    {
        temp = uart_req.params[i] - '0';

        for (uint8_t j = 1; j < count - i; j++)
            temp *= 10;

        value += temp;
    }

    count = 0;

    //don't transmit anything to execute more than 1 command
    while (!LL_USART_IsActiveFlag_TXE(USART1));
    //LL_USART_TransmitData8(USART1, is_ok + '0');

    uart_req.active = 0;
    return;
}
/*---------------------------------------------*/
/*
 * Terminal
 * Receive commands and do corresponding action
 */
int main(void)
{
    rcc_config();
    gpio_config();
    systick_config();
    usart_config();

    while (1) 
    {
        manage_requests();
    }
    return 0;
}
