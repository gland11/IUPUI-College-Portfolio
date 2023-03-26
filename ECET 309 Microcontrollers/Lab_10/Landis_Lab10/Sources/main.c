#include <hidef.h>      /* common defines and macros */
#include "derivative.h"      /* derivative-specific definitions */
#include "defs.h"
#include "protos.h"

/*************************************************************
 * This is the Main.C File                                   *
 * Name: George Landis                                       *
 * Title of Program: Lab 10 Sonar Ranging                    *
 *                                                           *
 * Class:ECET 30903                                          *
 * Due Date:4/08/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/
volatile unsigned char rawCount;
   
   volatile unsigned char distance;
   volatile unsigned char rate;
   volatile unsigned char time;
   
   volatile unsigned char ch6;
   volatile unsigned char ch7;
   volatile unsigned char clocktick = 65536;

   volatile unsigned char ch6;
   volatile unsigned char ch7;
   
   char Buffer[33];


void main(void) 
{
  /* put your own code here */
 
	EnableInterrupts;
	
	InitializeLCD();
	
	ch6 = ECT_TC6;
	ch7 = ECT_TC7;
	
   ECT_TSCR1 |= 0x80;
   
   ECT_TIOS_IOS6 = 0;
   ECT_TIOS_IOS7 = 0;
   
   ECT_TCTL3_EDG6B = 0;
   ECT_TCTL3_EDG6A = 1;
   
   ECT_TCTL3_EDG7B = 0;
   ECT_TCTL3_EDG7A = 1;   

  for(;;) 
  {
   
   
   
   PTT_PTT6 = 0;
   
   while(PTIS_PTIS4)
   {
    ; //do nothing and wait for push button press  
   }
   
   Delay(20); // basic delay
   
   while(!PTIS_PTIS4)
   {
      ;//Do nothing and wait for push button release
   }
   
        _FEED_COP(); /* feeds the dog */
  } /* loop forever */
  /* please make sure that you never leave main */
}

   void Stuff(unsigned char)
   {
      
      if(ch6 > ch7)
      {
          //overflow in TCNT
         rawCount = ch7 + (clocktick - ch6);   
      }
      else
      {
         rawCount = clocktick - ch6;  
      }
      return rawCount;
   }
   
   void DoMath(unsigned char)
   {
    rate = rawCount * 13392;
    
      
      
   }
