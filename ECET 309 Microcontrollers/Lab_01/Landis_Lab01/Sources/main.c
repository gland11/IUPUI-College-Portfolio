#include <hidef.h>      /* common defines and macros */
#include "derivative.h"      /* derivative-specific definitions */
#include "protos.h"
/*************************************************************
 *                                                           *
 * Name: George Landis                                       *
 * Title of Program: Lab 01 Simple Factorial Program         *
 * Date:1/8/19                                               *
 * Class:ECET 30903                                          *
 * Due Date:1//19                                            *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************
 */
// Global Variables Go Down here
int table[6];

void main() 
{
   
  /* put your own code here */
  
  //Call FillTable
   FillTable();

  for(;;) 
  {
    _FEED_COP(); /* feeds the dog */
  } /* loop forever */
  /* please make sure that you never leave main */
}

 /*
 *	Simple Factorial Program
 *  	Demonstrates recursivity
 * Code is provided by Prof. Freije the Instructor of ECET 30903
 * Using code to learn the functionality of the code.
 ****************************************************************
 */


//  Insert provided code into the CodeWarrior C program.
//  Declare global variables 
//  Add another file for the function prototypes
//  refer to lab 01 for further instructions 


/*	Fill Factorial Table
 */
void FillTable(void)
{
	int i;
   
   
	for (i = 0; i < 6; i++)
	{
		table[i] = Fact(i);
	}
}


/*	Recursive Factorial Function
 */
int Fact(int num)
{
	if (num < 2)
	{
		return (1);
	}
	else
	{
		return (num * Fact(num - 1));
	}
}

/* table[6]
   [0]   1   int
   [1]   1   int
   [2]   2   int
   [3]   6   int
   [4]   24  int   
   [5]   120 int
   
   The Fact method ran 16 times
*/

