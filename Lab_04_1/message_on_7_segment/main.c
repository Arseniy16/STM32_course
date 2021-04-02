/*
 * This project is for using 7_segment indicator.
 */
#include <stm32f0xx_ll_rcc.h>
#include <stm32f0xx_ll_system.h>
#include <stm32f0xx_ll_bus.h>
#include <stm32f0xx_ll_gpio.h>

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
/*
 * Just set of commands to waste CPU power for 2ms
 */
__attribute__((naked)) void delay(void)
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

#define bits(PIN_7, PIN_6, PIN_5, PIN_4, PIN_3, PIN_2, PIN_1, PIN_0) \
	((PIN_7) * (LL_GPIO_PIN_7) | \
	 (PIN_6) * (LL_GPIO_PIN_6) | \
	 (PIN_5) * (LL_GPIO_PIN_5) | \
	 (PIN_4) * (LL_GPIO_PIN_4) | \
	 (PIN_3) * (LL_GPIO_PIN_3) | \
	 (PIN_2) * (LL_GPIO_PIN_2) | \
	 (PIN_1) * (LL_GPIO_PIN_1) | \
	 (PIN_0) * (LL_GPIO_PIN_0)   \
	)
		/*
			case 'a': out = bits(0x77); break;
			case 'b': out = bits(0x7c); break;
			case 'c': out = bits(0x39); break;
			case 'd': out = bits(0x5e); break;
			case 'e': out = bits(0x79); break;
			case 'f': out = bits(0x71); break;
			case 'g': out = bits(0x7d); break;
			case 'h': out = bits(0x76); break;
			case 'i': out = bits(0x6); break;
			case 'j': out = bits(0xe); break;
			case 'l': out = bits(0x38); break;
			case 'n': out = bits(0x54); break;	
			case 'o': out = 0x3f; break;
			case 'p': out = 0x73; break;
			case 's': out = 0x6d; break;
			case 'u': out = 0x3e; break;
			case 'z': out = 0x5b; break;
			case 'q': out = 0x67; break;
			case 'r': out = 0x50; break;
			case 't': out = 0x78; break;
			case 'y': out = 0x6e; break;
			case ',':
			case '.': out = 0x80; break;
			case '!': out = 0x86; break;
			case '?': out = 0xA7; break;
			case '_': out = 0x8; break;
			case '-': out = 0x40; break;
			default: out = 0x0; break;
			*/
/*
 * this function translates symbol for 7_segment indicator
 */
int symbols(char c)
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
		default: out = bits(0,0,0,0,0,0,0,0); break;
	}
	return out;
}

/*
 * this function is just for one indicator 
 */
static void set_indicator(uint8_t number)
{
    /*
     * Put all pins for indicator together (for segments only)
     */
    static uint32_t mask = bits(1,1,1,1,1,1,1,1);
    /*
     * For simplicity there are only decoded values for the first 4 numbers
     */
    static const uint32_t decoder[] = 
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
    	bits(0,1,1,0,1,1,1,1)  //9
    };

    const uint8_t max_num = sizeof(decoder) / sizeof(uint32_t);
    uint32_t port_state = 0;

	/*
	 * Read current state and do not change pins that are not related to
     * indicator (that is done by using masking)
     */
    port_state = LL_GPIO_ReadOutputPort(GPIOB);
    /*
     * Example:
     * 01100101 <= Input
     * mask = 111 (pins allowed to be changed)
     * ~mask = 11111000 (inverted mask sets remaing bits to one)
     * result = result & ~mask (zero only first three bits)
     * result = result | 001 (modify first three bits)
     * result -> 01100001
     */
    port_state = (port_state & ~mask) | decoder[number % max_num];
    LL_GPIO_WriteOutputPort(GPIOB, port_state);
    return;
}
/*
 * it's a special mask to turn on paticular leds on indicator
 */
uint32_t mask_indicator(uint32_t mask)
{
	return bits((mask & (1<<7)) >> 7, (mask & (1<<6)) >> 6, (mask & (1<<5)) >> 5, (mask & (1<<4)) >> 4, \
				(mask & (1<<3)) >> 3, (mask & (1<<2)) >> 2, (mask & (1<<1)) >> 1, mask & 1);
}

/*
 * this function is for displaying dynamic text (> 4 symbols)
 */
void dynamic_text(char line[])
{
	char c = line[0];
	uint32_t i = 0, last_cnt = 0;
	
	while(c != '\0')
	{			
		//this cycle to slow down the text
		for(int cnt = 0; cnt < 50; cnt++)
		{		
			//this cycle to scroll all text
			for(uint32_t num = i, next = 0; (num >= 0) && (next < 4); num--, next++)
			{	
				c = line[num];
	
				//update indicator and show text
				LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));
				
				LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1<<next));

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
/*
 *this function is for displaying static text (just < 4 symbols)
 */
void text(char line[])
{
	char c = line[0];
	uint32_t i = 0, out = 0x0, shift = 3;
	
	while(c != '\0')
	{
		c = line[i++];
		
		out = symbols(c);

		LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));

		LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1 << shift--));

		LL_GPIO_WriteOutputPort(GPIOB, out);

		delay();
	}
	
	return;
}
/*
 * this function is for displaying number in decimal (0-9999)
 */
void dec_display(uint16_t number)
{
	static uint16_t digit_num = 0;
	uint16_t out = 0;

	const uint16_t decoder[] = {bits(0,0,1,1,1,1,1,1), //0
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
								bits(0,1,1,1,0,0,0,1)}; //f
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

	return;
} 

void dyn_display(uint32_t number)
{
	uint32_t out = 0;
	static uint16_t digit_num = 0;

	const uint32_t decoder[] = {bits(0,0,1,1,1,1,1,1), //0
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
								bits(0,1,1,1,0,0,0,1)}; //f

	//LL_GPIO_WriteOutputPort(GPIOC, main_bits(1,1,1,1));

	LL_GPIO_WriteOutputPort(GPIOC, mask_indicator(0b1111));
	
	LL_GPIO_ResetOutputPin(GPIOC, mask_indicator(1 << digit_num));

	out = decoder[(number & (0x000f << 4*digit_num)) >> 4*digit_num];

	LL_GPIO_WriteOutputPort(GPIOB, mask_indicator(out));

	digit_num = (digit_num + 1) % 4;

	return;
}

int main(void)
{
	rcc_config();
	gpio_config();

	while(1)
	{

		for(int i = 0; i < 1000; i++)
		{
			//dec_display(9993);
			set_indicator(0xf);
			delay();
		}
		
		//dynamic_text("abcdefghi");

		
		dynamic_text("phystech_labs and...");
		//text("abcd");
		
		text(" ");
		
		dynamic_text("biba_boba");
		/*
		for(int i = 0; i < 0xffff; i++)
		{
			dyn_display(i);
			delay();
		}
		
		for(int i = 0; i < 1000; i++)
			text("cool");
		*/
	}
		
    return 0;
}

