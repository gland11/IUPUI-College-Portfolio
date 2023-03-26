#include <hidef.h>      /* common defines and macros */
#include "derivative.h"      /* derivative-specific definitions */
#include "protos.h"
/*************************************************************
 * This is the Main.C File                                   *
 * Name: George Landis                                       *
 * Title of Program: Lab 09 Task Scheduler & Motor PWM       *
 *                                                           *
 * Class:ECET 30903                                          *
 * Due Date:3/25/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/
extern 
void main(void) 
{
  /* put your own code here */
  
  InitializeInts();
  
  DDRC = 0xFF;

  for(;;) 
  {
  
   TaskMakes();
   
    _FEED_COP(); /* feeds the dog */
  } /* loop forever */
  /* please make sure that you never leave main */
}
