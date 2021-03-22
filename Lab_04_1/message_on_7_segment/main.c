
#include <stm32f0xx_ll_rcc.h>
#include <stm32f0xx_ll_system.h>
#include <stm32f0xx_ll_bus.h>
#include <stm32f0xx_ll_gpio.h>

static void rcc_config()
{
	LL_FLASH_SetLatency(LL_FLASH_LATENCY_0);

	LL_RCC_HSI_Enable();
	while(LL_RCC_HSI_IsReady() != 1) ;

	LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2, LL_RCC_PLL_MUL_12);
	LL_RCC_PLL_Enable();
	while(LL_RCC_PLL_IsReady() != 1) ;

	LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
	LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
	while(LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL ) ;

	LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

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

__attribute__((naked)) void delay(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay+0x4");
    asm ("pop {r7, pc}");
    //asm (".word 0x5b8d80"); //1sec
    asm(".word 0xbb8"); //3000	
    //asm (".word 0xea60"); //60000 (10ms)
}

int symbols(char c)
{
	uint32_t out = 0;
	switch(c)
		{
			case 'a': out = 0x77; break;
			case 'b': out = 0x7c; break;
			case 'c': out = 0x39; break;
			case 'd': out = 0x5e; break;
			case 'e': out = 0x79; break;
			case 'f': out = 0x71; break;
			case 'g': out = 0x7d; break;
			case 'h': out = 0x76; break;
			case 'i': out = 0x6; break;
			case 'j': out = 0xe; break;
			case 'l': out = 0x38; break;
			case 'n': out = 0x54; break;
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

		}
		return out;
}

//this function is for displaying dynamic text (> 4 symbols)
void dynamic_text(char line[])
{
	char c = line[0];
	uint32_t i = 0, last_cnt = 0;
	
	i = 0, last_cnt = 0;
	c = line[0];

	while(c != '\0')
	{			
		//this cycle to slow down the text
		for(int cnt = 0; cnt < 300; cnt++)
		{		
			//this cycle to scroll all text
			for(uint32_t k = i, j = 0; (k >= 0) && (j < 4); k--, j++)
			{	
				c = line[k];

			//update indicator and show text
			LL_GPIO_WriteOutputPort(GPIOC, 0b1111);
			LL_GPIO_WriteOutputPort(GPIOC, ~(1<<j));
			LL_GPIO_WriteOutputPort(GPIOB, symbols(c));
			delay();
			}

		}
		
		c = line[i++];
		
		//it's necessary to make the text reach the end of the indicator
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


//this function is for displaying static text (just < 4 symbols)
void text(char line[])
{
	char c = line[0];
	uint32_t i = 0, out = 0x0, k = 3;
	
	while(c != '\0')
	{
		c = line[i++];
		
		out = symbols(c);

		LL_GPIO_WriteOutputPort(GPIOC, 0b1111);
		LL_GPIO_WriteOutputPort(GPIOC, ~(1<<k));
		k--;
		LL_GPIO_WriteOutputPort(GPIOB, out);
		delay();
	}
	
	return;
}

//this function is for displaying number (0-ffff) 
void dyn_display(uint32_t number)
{
	
	uint32_t out = 0;
	static uint16_t digit_num = 0;

	const uint32_t decoder[] = {0x3f, 0x6, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x7, 0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71};

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


int main(void)
{
	rcc_config();
	gpio_config();

	while(1)
	{
		
		for(int i = 0; i < 3000; i++)
		{
			dyn_display(0x2021);
			delay();
		}
		

		dynamic_text("phystech_labs and...");
		//text("abcd");
		text(" ");
		
		dynamic_text("biba_boba");
		
		for(int i = 0; i < 0xffff; i++)
		{
			dyn_display(i);
			delay();
		}
		
		for(int i = 0; i < 1000; i++)
			text("cool");

	}

    return 0;
}

