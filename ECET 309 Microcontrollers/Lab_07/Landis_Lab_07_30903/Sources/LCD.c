#include <hidef.h>
#include "derivative.h"
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
 
const unsigned char lcdArray[] = {0x30,0x30,0x30,0x38,0x0f,0x01,0x06};

// Delay function that does nothing
void Delay(unsigned long int delayVal)
{
   while (delayVal != 0)
   {
      delayVal--; // Do nothing
   }
}

// Function to Initialize the LCD. Calls another function to make it easier
void InitializeLCD(void)
{
   unsigned int index;
   
   // Set PORTK and PORTD as outputs
   DDRK = 0xFF;
   DDRD = 0xFF;
   DDRE = 0x0C;
   //Delay(1000);
   BusyCheck();
   // Step through array from earlier to initialize LCD
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
   
   LCDInit(HOME_DISPLAY);
	
	LCDInit(CLEAR_DISPLAY);	

      for(count = 0; message[count] != 0; count++)
      {
            BusyCheck();
            if(count == 16)
            {
               LCDInit(SECOND_LINE);
               
               LCDData(message[count]);
            }
            else
            {
               LCDData(message[count]);  
            }
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
   //Delay(1000);
   BusyCheck();
}

// Used to pass each character individually until the end of the string
void LCDData(unsigned char stringVal)
{
   PORTK = stringVal;// Move the data “characters” to LCD port
   PORTD_PD5 = 1;// Selected data register
   PORTD_PD6 = 0;// rw low because we want to write
   PORTD_PD7 = 1;// toggle the enable line
   PORTD_PD7 = 0;
   //Delay(1000);
   BusyCheck();
}

void BusyCheck(void)
{
  DDRK = 0x7f;
  PORTD_PD5 = 0;   //Set RS low
  PORTD_PD6 = 1;   //Set R/W high
  PORTD_PD7 = 1;   //Set E line to High
  
  while(PORTK & 0x80) // while its high
  {
     PORTD_PD7 = 1;
     PORTD_PD7 = 0;
  }
  DDRK = 0xFF;
}

void CallingFunction(void)
{
   Delay(500000);
   
   DISPLAY_GREEN;
   
   Display("I love to Code!");
   
   Delay(500000);
   
   DISPLAY_RED;	
   
   Display("Coding is the   best thing ever!");
   
   Delay(500000);
   
   DISPLAY_BLUE;
   
   Display("I dont know whatto type here");
 
}