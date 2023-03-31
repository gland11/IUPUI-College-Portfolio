#include <hidef.h>      /* common defines and macros */
#include "derivative.h"      /* derivative-specific definitions */
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




void main(void) 
{
  /* put your own code here */
	EnableInterrupts;
   InitializeFun();

  for(;;) 
  {
    Display();
    
    _FEED_COP(); /* feeds the dog */
  } /* loop forever */
  /* please make sure that you never leave main */
}
