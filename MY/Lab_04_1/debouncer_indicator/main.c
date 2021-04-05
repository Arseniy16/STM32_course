/*
 * This project is for using 7_segment indicator with button bounce treatment. 
 */
#include <stm32f0xx_ll_rcc.h>
#include <stm32f0xx_ll_system.h>
#include <stm32f0xx_ll_bus.h>
#include <stm32f0xx_ll_gpio.h>

/*---------------------------------------------*/
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
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2, LL_RCC_PLL_MUL_12);

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

    /* Use just one indicator (if use other indicators, uncomment below)*/
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
    /*
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
    */

    /*
     * Init port for button
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);

    /*
     * Init 7_segment indicator
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

__attribute__((naked)) static void delay_10ms(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay_10ms+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0xea60"); //6000 (10ms)
}

/*
 * This function is for displaying number (0-f)
 */
void show_digit(uint16_t number)
{   
    const uint32_t decoder[] = 
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
        bits(0,1,1,1,0,1,1,1), //a
        bits(0,1,1,1,1,1,0,0), //b
        bits(0,0,1,1,1,0,0,1), //c
        bits(0,1,0,1,1,1,1,0), //d
        bits(0,1,1,1,1,0,0,1), //e
        bits(0,1,1,1,0,0,0,1)  //f
    };

    LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_0);

    LL_GPIO_WriteOutputPort(GPIOB, decoder[number]);

    return;
} 

int main(void)
{
	rcc_config();
	gpio_config();

	uint32_t status = 0, count = 0, flag = 0;

    while(1)
    {
        if(count > 15) count = 0;
    
        //processing bounce-contact of button USER
        status = 0;
        while((status < 5) && (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0)) ) 
        {
            delay_10ms();
            status++;
        }

        //if button really was pressed
        if(status >= 5 )
        {
            //when we put on the button USER the 7_segment indicator increases value by 1	
       	    if(flag == 0)
           	{
                show_digit(count++);
                
                LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_9);
                
                flag = 1;
           	}
        }       
        else flag = 0;	    
    }
    return 0;
}

