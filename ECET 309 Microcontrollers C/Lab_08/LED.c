#include <hidef.h>      /* common defines and macros */
#include "derivative.h"      /* derivative-specific definitions */
#include "defs.h"
#include "protos.h"
/*************************************************************
 *                                                           *
 * Name: George Landis                                       *
 * Title of Program: Lab 08 T-Bird Turn Signal               *
 *                                                           *
 * Class:ECET 30903                                          *
 * Due Date:3/04/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/

 //initialize values needed
 void InitializeFun (void)
 {
  DDRC = 0xFF; 
 }
 
 void Delay(unsigned long int delayVal)
 {
   while (delayVal != 0)
   {
      delayVal--; //dec val
   }
 }
 
 void Display(void)
 {
    unsigned char leftTurnArray[] = { LEFT_0, LEFT_1, LEFT_2, CLEAR_ALL }
    unsigned char rightTurnArray[] = { RIGHT_0, RIGHT_1, RIGHT_2, CLEAR_ALL}
    unsigned char flashArray[] = { FLASH_ON, CLEAR_ALL, FLASH_ON, CLEAR_ALL}  
      
    if(PORTB & ~LEFT_TURN)//Check if high
    {
     for(int index = 0; index <= 5; index++)
     {
      PORTC = leftTurnArray[index];
      Delay(1000);
     }
    }
    
    if(PORTB & ~RIGHT_TURN)
    {
       for(int index = 0; index <= 5; index++)
     {
      PORTC = rightTurnArray[index];
      Delay(1000);
     }
    }
    
    if(PORTB & ~FLASH)
    {
     for(int index = 0; index <= 5; index++)
     {
      PORTC = flashArray[index];
      Delay(1000);
     } 
    }
 }
 