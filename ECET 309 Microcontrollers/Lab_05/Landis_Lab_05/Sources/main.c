#include <hidef.h>      /* common defines and macros */
/*#include "derivative.h"*/      /* derivative-specific definitions */
#include "protos.h"
#include "defs.h"
#include "ports.h"

/*************************************************************
 *                                                           *
 * Name: George Landis                                       *
 * Title of Program: Lab 05 Hardware Abstraction Layer: I/O  * 
 *                          Using MacrosLEDs and Switches    *
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
   LED_ENABLED(0);
   LED_ENABLED(1);  
   LED_ENABLED(2);  
   LED_ENABLED(3);
   LED_ENABLED(4);
   LED_ENABLED(5);
   LED_ENABLED(6);
   LED_ENABLED(7);

   for(;;) 
   {
     TradFuntion();  //calls function
   
    _FEED_COP(); /* feeds the dog */
   } /* loop forever */
  /* please make sure that you never leave main */
}
 void TradFuntion(void)
      { 
         //Switch 0
         //LED 7
         if(SWITCH_STATE(0)) // test: is switch 0 high?
         {
            LED_ON(7); // if switch 0 is high, set LED bit 7
         }
         else
         {
            LED_OFF(7); //if switch 0 is low, clear LED bit 7
         }
         //Switch 1
         //LED 6
         if(SWITCH_STATE(1)) // test: is switch 1 high?
         {
            LED_ON(6); // if switch 1 is high, set LED bit 6
         }
         else   
         {
            LED_OFF(6); //if switch 1 is low, clear LED bit 6
         }
         //Switch 2
         //LED 5
         if(SWITCH_STATE(2)) // test: is switch 0 high?
         {  
            LED_ON(5); // if switch 2 is high, set LED bit 5
         }
         else
         {
            LED_OFF(5); //if switch 2 is low, clear LED bit 5
         }
         //Switch 3
         //LED 4
         if(SWITCH_STATE(3)) // test: is switch 3 high?
         {
            LED_ON(4); // if switch 3 is high, set LED bit 4
         }
         else
         {
            LED_OFF(4); //if switch 3 is low, clear LED bit 4
         }
         //Switch 4
         //LED 3
         if(SWITCH_STATE(4)) // test: is switch 4 high?
         {
            LED_ON(3); // if switch 4 is high, set LED bit 3
         }
         else
         {
            LED_OFF(3); //if switch 4 is low, clear LED bit 3
         }
         //Switch 5
         //LED 2
         if(SWITCH_STATE(5)) // test: is switch 5 high?
         {
             LED_ON(2); // if switch 5 is high, set LED bit 2
         }
         else
         {
            LED_OFF(2); //if switch 5 is low, clear LED bit 2
         }
         //Switch 6
         //LED 1
         if(SWITCH_STATE(6)) // test: is switch 6 high?
         {
            LED_ON(1); // if switch 6 is high, set LED bit 1
         }
         else
         {
            LED_OFF(1); //if switch 6 is low, clear LED bit 1
         }
         //Swithc 7
         //LED 0
         if(SWITCH_STATE(7)) // test: is switch 7 high?
         {
            LED_ON(0); // if switch 7 is high, set LED bit 0
         }
         else
         {
            LED_OFF(0); //if switch 7 is low, clear LED bit 0
         }
      }