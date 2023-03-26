#include <hidef.h>      /* common defines and macros */
/*#include "derivative.h"*/      /* derivative-specific definitions */
#include "defs.h"
#include "ports.h"
#include "protos.h"
/*************************************************************
 *                                                           *
 * Name: George Landis                                       *
 * Title of Program: Lab 04 I/O Using Logic Operations,      * 
 *                          Bit Fields LEDs & Switches       *
 * Date:2/2/19                                               *
 * Class:ECET 30903                                          *
 * Due Date:2/05/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/

void main(void) 
{
  /* put your own code here */
  DDRC = 0xFF;

  for(;;) 
  {
    //TradFuntion(); //function call
    ModernFuntion();//Modern function call
    //ModernFunction
    
    _FEED_COP(); /* feeds the dog */
  } /* loop forever */
  /* please make sure that you never leave main */
}

/*void TradFuntion(void)
{
   //Switch 0
   //LED 7
   if(Switches & BIT_0) // test: is switch 0 high?
   {
      LEDs |= BIT_7; // if switch 0 is high, set LED bit 7
   }
   else
   {
      LEDs &= ~BIT_7; //if switch 0 is low, clear LED bit 7
   }
   //Switch 1
   //LED 6
   if(Switches & BIT_1) // test: is switch 1 high?
   {
      LEDs |= BIT_6; // if switch 1 is high, set LED bit 6
   }
   else   
   {
      LEDs &= ~BIT_6; //if switch 1 is low, clear LED bit 6
   }
   //Switch 2
   //LED 5
   if(Switches & BIT_2) // test: is switch 0 high?
   {
      LEDs |= BIT_5; // if switch 2 is high, set LED bit 5
   }
   else
   {
      LEDs &= ~BIT_5; //if switch 2 is low, clear LED bit 5
   }
   //Switch 3
   //LED 4
   if(Switches & BIT_3) // test: is switch 3 high?
   {
      LEDs |= BIT_4; // if switch 3 is high, set LED bit 4
   }
   else
   {
      LEDs &= ~BIT_4; //if switch 3 is low, clear LED bit 4
   }
   //Switch 4
   //LED 3
   if(Switches & BIT_4) // test: is switch 4 high?
   {
      LEDs |= BIT_3; // if switch 4 is high, set LED bit 3
   }
   else
   {
      LEDs &= ~BIT_3; //if switch 4 is low, clear LED bit 3
   }
   //Switch 5
   //LED 2
   if(Switches & BIT_5) // test: is switch 5 high?
   {
      LEDs |= BIT_2; // if switch 5 is high, set LED bit 2
   }
   else
   {
      LEDs &= ~BIT_2; //if switch 5 is low, clear LED bit 2
   }
   //Switch 6
   //LED 1
   if(Switches & BIT_6) // test: is switch 6 high?
   {
      LEDs |= BIT_1; // if switch 6 is high, set LED bit 1
   }
   else
   {
      LEDs &= ~BIT_1; //if switch 6 is low, clear LED bit 1
   }
   //Swithc 7
   //LED 0
   if(Switches & BIT_7) // test: is switch 7 high?
   {
      LEDs |= BIT_0; // if switch 7 is high, set LED bit 0
   }
   else
   {
      LEDs &= ~BIT_0; //if switch 7 is low, clear LED bit 0
   }
}
*/

void ModernFuntion(void)
{
   if(Switches.BIT_0) // test: is switch 0 high?
   {
      LEDs.BIT_7=1; // if switch 0 is high, set LED bit 7
   }
   else
   {
      LEDs.BIT_7=0; //if switch 0 is low, clear LED bit 7
   }
   //Switch 1
   //LED 6
   if(Switches.BIT_1) // test: is switch 1 high?
   {
      LEDs.BIT_6=1; // if switch 1 is high, set LED bit 6
   }
   else   
   {
      LEDs.BIT_6=0; //if switch 1 is low, clear LED bit 6
   }
   //Switch 2
   //LED 5
   if(Switches.BIT_2) // test: is switch 0 high?
   {
      LEDs.BIT_5=1; // if switch 2 is high, set LED bit 5
   }
   else
   {
      LEDs.BIT_5=0; //if switch 2 is low, clear LED bit 5
   }
   //Switch 3
   //LED 4
   if(Switches.BIT_3) // test: is switch 3 high?
   {
      LEDs.BIT_4=1; // if switch 3 is high, set LED bit 4
   }
   else
   {
      LEDs.BIT_4=0; //if switch 3 is low, clear LED bit 4
   }
   //Switch 4
   //LED 3
   if(Switches.BIT_4) // test: is switch 4 high?
   {
      LEDs.BIT_3=1; // if switch 4 is high, set LED bit 3
   }
   else
   {
      LEDs.BIT_3=0; //if switch 4 is low, clear LED bit 3
   }
   //Switch 5
   //LED 2
   if(Switches.BIT_5) // test: is switch 5 high?
   {
      LEDs.BIT_2=1; // if switch 5 is high, set LED bit 2
   }
   else
   {
      LEDs.BIT_2=0; //if switch 5 is low, clear LED bit 2
   }
   //Switch 6
   //LED 1
   if(Switches.BIT_6) // test: is switch 6 high?
   {
      LEDs.BIT_1=1; // if switch 6 is high, set LED bit 1
   }
   else
   {
      LEDs.BIT_1=0; //if switch 6 is low, clear LED bit 1
   }
   //Swithc 7
   //LED 0
   if(Switches.BIT_7) // test: is switch 7 high?
   {
      LEDs.BIT_0=1; // if switch 7 is high, set LED bit 0
   }
   else
   {
      LEDs.BIT_0=0; //if switch 7 is low, clear LED bit 0
   }  
}