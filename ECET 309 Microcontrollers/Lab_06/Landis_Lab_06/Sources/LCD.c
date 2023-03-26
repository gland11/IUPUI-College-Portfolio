#include <hidef.h>
#include "derivative.h"
#include "protos.h"

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
 
const unsigned char lcdArray[] = {0x30,0x30,0x30,0x38,0x0f,0x01,0x06};

// Delay function that decrements value, waste's time.
void Delay(unsigned long int delayVal)
{
   while (delayVal != 0)
   {
      delayVal--; // decrement value
   }
}

// Function to Initialize the LCD. Calls another function.
void InitializeLCD(void)
{
   unsigned int index;
   
   // Set PORTK and PORTD as outputs
   DDRK = 0xFF;
   DDRD = 0xFF;
   
   // Step through array to initialize LCD
   for(index = 0; index <= 6; index++)
   {
      LCDInit(lcdArray[index]);
   }
}


// Function that passes each character to the LCD one at a time using another
//    function
void Display(unsigned char* message)
{
   // Call a function while passing each character individually until the
   //    string is finished
   unsigned int count;
   for(count = 0; message[count] != 0; count++)
   {
      LCDData(message[count]);
   }
}

// Simplifies the LCD Initialization                                                 
void LCDInit(unsigned char dataVal)
{
   PORTK = dataVal;// Function set: using 8-bit mode
   PORTD_PD5 = 0;// Selected command register
   PORTD_PD6 = 0;// We are writing in data register
   PORTD_PD7 = 1;// Enable H->
   PORTD_PD7 = 0;
   Delay(1000);
}

// Used to pass each character individually until the end of the string
void LCDData(unsigned char stringVal)
{
   PORTK = stringVal;// Move the data “characters” to LCD port
   PORTD_PD5 = 1;// Selected data register
   PORTD_PD6 = 0;// rw low because we want to write
   PORTD_PD7 = 1;// toggle the enable line
   PORTD_PD7 = 0;
   Delay(1000);
}