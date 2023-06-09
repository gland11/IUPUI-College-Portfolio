#include <hidef.h>      /* common defines and macros */
#include "derivative.h"      /* derivative-specific definitions */
#include "protos.h"
#include "defs.h"
/*************************************************************
 *                                                           *
 * Name: George Landis                                       *
 * Title of Program: Lab 06 LCD Display A                    *
 * Date:2/12/19                                              *
 * Class:ECET 30903                                          *
 * Due Date:2/18/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/

void main(void) 
{
  /* put your own code here */
	EnableInterrupts;
	
	InitializeLCD();
	
	
  for(;;) 
  {
  
   CallingFunction();
   
    _FEED_COP(); /* feeds the dog */
  } /* loop forever */
  /* please make sure that you never leave main */
}
