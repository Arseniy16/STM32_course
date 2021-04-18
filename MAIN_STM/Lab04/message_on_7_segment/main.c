/*
 * This project is for using 7_segment indicator.
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

/////////////////////////////////////////////////
////////////// DEFINE VARIABLES /////////////////
/*---------------------------------------------*/
/////////////////////////////////////////////////

/*
 * During TEXT_TIME you can show a text 
 * It uses in text()
 */ 
#define TEXT_TIME 1000 //in ms

/*
 * During DEC_TIME and DYN_TIME you can show a value 
 * It uses in dec_display() and in dyn_display()
 */ 
#define DEC_TIME 5 //in ms

#define DYN_TIME 1000 //in ms

/*
 * It uses in delay() and for calculate count in cycles 
 * If you change delay() you must change DELAY!!!
 */
#define DELAY 2 //in ms

/*
 * The higher DYNAMIC_COEF, the slower the text moves
 * It uses in dynamic_text()    
 */
#define DYNAMIC_COEF 50 //normal value
/////////////////////////////////////////////////

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
/*
 * Clock on GPIOC, GPIOB and GPIOA
 * Set pins on leds, button and indicator
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
/*---------------------------------------------*/
/*
 * Just set of commands to waste CPU power for DELAY __2ms__ 
 */
__attribute__((naked)) static void delay(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0x2ee0"); //12000 (2ms)
    //asm (".word 0x5b8d80"); //1sec
    //asm(".word 0xbb8"); //3000    
    //asm (".word 0xea60"); //60000 (10ms)
}
/*---------------------------------------------*/
/*
 * This function translates symbol for 7_segment indicator
 */
uint32_t symbols(char c)
{
    uint32_t out = 0;
    switch(c)
    {
        case 'a': out = bits(0,1,1,1,0,1,1,1); break;                               
        case 'b': out = bits(0,1,1,1,1,1,0,0); break;
        case 'c': out = bits(0,0,1,1,1,0,0,1); break;
        case 'd': out = bits(0,1,0,1,1,1,1,0); break;
        case 'e': out = bits(0,1,1,1,1,0,0,1); break;
        case 'f': out = bits(0,1,1,1,0,0,0,1); break;
        case 'g': out = bits(0,1,1,1,1,1,0,1); break;
        case 'h': out = bits(0,1,1,1,0,1,1,0); break;
        case 'i': out = bits(0,0,0,0,0,1,1,0); break;
        case 'j': out = bits(0,0,0,0,1,1,1,0); break;
        case 'l': out = bits(0,0,1,1,1,0,0,0); break;
        case 'n': out = bits(0,1,0,1,0,1,0,0); break;
        case 'o': out = bits(0,0,1,1,1,1,1,1); break;
        case 'p': out = bits(0,1,1,1,0,0,1,1); break;
        case 's': out = bits(0,1,1,0,1,1,0,1); break;
        case 'u': out = bits(0,0,1,1,1,1,1,0); break;
        case 'z': out = bits(0,1,0,1,1,0,1,1); break;
        case 'q': out = bits(0,1,1,0,0,1,1,1); break;
        case 'r': out = bits(0,1,0,1,0,0,0,0); break;
        case 't': out = bits(0,1,1,1,1,0,0,0); break;
        case 'y': out = bits(0,1,1,0,1,1,1,0); break;
        case ',':
        case '.': out = bits(1,0,0,0,0,0,0,0); break;
        case '!': out = bits(1,0,0,0,0,1,1,0); break;
        case '?': out = bits(1,0,1,0,0,1,1,1); break;
        case '_': out = bits(0,0,0,0,1,0,0,0); break;
        case '-': out = bits(0,1,0,0,0,0,0,0); break;
        default:  out = bits(0,0,0,0,0,0,0,0); break;
    }
    return out;
}
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
/*
 * this function is for displaying dynamic text (> 4 symbols)
 */
void dynamic_text(char line[])
{
    char c = line[0];
    uint32_t i = 0, last_cnt = 0;
    
    while(c != '\0')
    {           
        /*
         * This cycle to slow down the text
         * The higher DYNAMIC_COEF, the slower the text moves
         */
        for(int cnt = 0; cnt < DYNAMIC_COEF; cnt++) 
        {       
            //this cycle to scroll all text
            for(uint32_t num = i, next = 0; (num >= 0) && (next < 4); num--, next++)
            {   
                c = line[num];
    
                //update indicator every cycle
                LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));
                
                //bit shift for 7-segment indicator
                LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1<<next));

                //turn on an indicator 
                LL_GPIO_WriteOutputPort(GPIOB, symbols(c));
            
                delay();
            }
        }
        
        c = line[i++];
        
        //it's necessary for the text to reach the end of the indicator
        if(c == '\0' || last_cnt != 0 )
        {       
            if(last_cnt < 2) 
            {   
                c = ' ';
                last_cnt++;
            }
            else c = '\0'; 
        }
    }
    return;
}
/*---------------------------------------------*/
/*
 * this function is for displaying static text (just < 4 symbols)
 */
void text(char line[])
{
    uint32_t out = 0;
    
    //during this TEXT_TIME you can show a text
    for(uint32_t cycle = 0; cycle < TEXT_TIME / (5 * DELAY) ; cycle++) 
    {
        char c = line[0];

        for(uint8_t shift = 3, i = 0; shift >= 0 && (c != '\0'); shift--, i++)
        {
            c = line[i];
            
            out = symbols(c);

            //update indicator every cycle
            LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));

            //bit shift for 7-segment indicator
            LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1 << shift));

            //turn on an indicator 
            LL_GPIO_WriteOutputPort(GPIOB, out);

            delay();
        }

        delay();
    }
    return;
}
/*---------------------------------------------*/
/*
 * This function is for displaying number in decimal (0-9999)
 */
void dec_display(uint16_t number)
{
    static uint16_t digit_num = 0;
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

    //during this DEC_TIME you can show a value   
    for(uint32_t i = 0 ; i < DEC_TIME / DELAY; i++)
    {
        //update indicator
        LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));

        //turn on a particular indicator
        LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1 << digit_num));

        if(digit_num == 0) out = decoder[(number % 10)];
        if(digit_num == 1) out = decoder[(number / 10) % 10];
        if(digit_num == 2) out = decoder[(number / 100) % 10];
        if(digit_num == 3) out = decoder[(number / 1000) % 10];

        LL_GPIO_WriteOutputPort(GPIOB, mask_indicator(out));

        digit_num = (digit_num + 1) % 4;

        delay();
    }
    return;
} 
/*---------------------------------------------*/
/*
 * This function is for displaying number in heximal (0-ffff)
 */
void dyn_display(uint32_t number)
{
    uint32_t out = 0;
    static uint16_t digit_num = 0;

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

    //during this DYN_TIME you can show a value   
    for(uint32_t i = 0 ; i < DYN_TIME / DELAY; i++)
    {
        //update indicator
        LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));
        
        //bit shift for 7-segment indicator
        LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1 << digit_num));

        //create mask for number
        out = decoder[(number & (0x000f << 4*digit_num)) >> 4*digit_num];

        LL_GPIO_WriteOutputPort(GPIOB, mask_indicator(out));

        digit_num = (digit_num + 1) % 4;

        delay();
    }
    return;
}
/*---------------------------------------------*/
int main(void)
{
    rcc_config();
    gpio_config();

    while(1)
    {
        dyn_display(0x2021);

        dynamic_text("phystech_labs and...");
        text(" ");
        dynamic_text("biba_boba");
        
        for(int i = 0; i < 9999; i++)
            dec_display(i);
        
        text("cool"); 
    }
        
    return 0;
}
