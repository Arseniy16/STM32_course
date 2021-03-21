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

    //Init two default LEDs
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);

    //Init 7-segment indicotor full
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

    return;
}

__attribute__((naked)) static void delay(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0x5b8d80"); //1 sec
    //asm (".word 0xea60"); //6000(10ms)
}

void show_display(uint16_t number, uint16_t digit)
{
	LL_GPIO_WriteOutputPort(GPIOB, 0b00000000);
	switch(number)
	{
		case 0: LL_GPIO_WriteOutputPort(GPIOC, 0b0111); break;
		case 1: LL_GPIO_WriteOutputPort(GPIOC, 0b1011); break;
		case 2: LL_GPIO_WriteOutputPort(GPIOC, 0b1101); break;
		case 3: LL_GPIO_WriteOutputPort(GPIOC, 0b1110); break;
		default: break;

	}
	show_digit(digit);
	return;
}

void show_digit(uint16_t x)
{
	
	switch(x)
	{
		case 0: LL_GPIO_WriteOutputPort(GPIOB, 0b00111111); break;
		case 1: LL_GPIO_WriteOutputPort(GPIOB, 0b00000110); break;
		case 2: LL_GPIO_WriteOutputPort(GPIOB, 0b01011011); break;
		case 3: LL_GPIO_WriteOutputPort(GPIOB, 0b01001111); break;
		case 4: LL_GPIO_WriteOutputPort(GPIOB, 0b01100110); break;
		case 5: LL_GPIO_WriteOutputPort(GPIOB, 0b01101101); break;
		case 6: LL_GPIO_WriteOutputPort(GPIOB, 0b01111101); break;
		case 7: LL_GPIO_WriteOutputPort(GPIOB, 0b00000111); break;
		case 8: LL_GPIO_WriteOutputPort(GPIOB, 0b01111111); break;
		case 9: LL_GPIO_WriteOutputPort(GPIOB, 0b01101111); break;
		case 10: LL_GPIO_WriteOutputPort(GPIOB, 0b01110111); break;
		case 11: LL_GPIO_WriteOutputPort(GPIOB, 0b01111100); break;
		case 12: LL_GPIO_WriteOutputPort(GPIOB, 0b00111001); break;
		case 13: LL_GPIO_WriteOutputPort(GPIOB, 0b01011110); break;
		case 14: LL_GPIO_WriteOutputPort(GPIOB, 0b01111001); break;
		case 15: LL_GPIO_WriteOutputPort(GPIOB, 0b01110001); break;
		default: break;

	}
	return;

}


int main(void)
{
	rcc_config();
	gpio_config();
	uint16_t i = 0;
	while(1)
	{
			
		if(i > 15) i = 0;
		for(uint16_t j = 0; j < 4; j++, i++)
		{
			show_display(j, i);
			delay();
		}	

	}

/*
	uint32_t status = 0, count = 0, flag = 0;
    while (1)
    {
    	
    	if(count > 15) count = 0;
    
    	status = 0;
    	while((status < 5) && (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0)) ) 
        {
           	
            delay();
            status++;
        }

       if(status >= 5 )
       {
       		
       		if(flag == 0)
       		{
       			
          		LL_GPIO_ResetOutputPin(GPIOB, 0b01111111);
          		show_digit(count);
          		LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_9);
          		count++;
          		flag = 1;
       		}

       }
       
       else flag = 0;	 
    }

*/
    return 0;
}

