#include <hidef.h>      /* common defines and macros */
#include "derivative.h"      /* derivative-specific definitions */
#include "protos.h"

/*************************************************************
 *                                                           *
 * Name: George Landis                                       *
 * Title of Program: Lab 02 4x4 Matrix Keypad                * 
 *                                       & Parallel Arrays   *
 * Date:1/17/19                                              *
 * Class:ECET 30903                                          *
 * Due Date:1/21/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************
 */
 
// Global Variables Go Down here
volatile unsigned char resolution;     //Getting and unsigned value for the end result
volatile unsigned char valPass = 0xe7; //0xee is an example value from table
  
void main(void) 
{
  /* put your own code here */
    
  resolution = NumFunction(valPass);     //Setting the function of the passed value into the final result
  resolution = AsciiFunction(valPass);

  for(;;) 
  {
    _FEED_COP(); /* feeds the dog */
  } /* loop forever */
  /* please make sure that you never leave main */
}
  

/*
  I have worked on this code and looked up and I understand that the
  error C2801 ";" is missing. I have searched through and still can not
  find and/or understand where this is coming form.

*/