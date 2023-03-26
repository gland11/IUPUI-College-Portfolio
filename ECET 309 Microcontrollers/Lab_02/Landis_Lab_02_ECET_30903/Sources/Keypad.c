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

const unsigned char detectedKeyPressVal[]=  //array of all keypress
{0xd7,0xee,0xde,0xbe,
 0xed,0xdd,0xbd,0xeb,
 0xdb,0xbb,0x7e,0x7d,
 0x7b,0x77,0xe7,0xb7};

const unsigned char numArray[]=  //array of the numbers on the keypad
{0,1,2,
 3,4,5,
 6,7,8,
   9};
   
const unsigned char AsciiArray[]=  //array of all numbers in ascii 
{'0','1','2','3',
 '4','5','6','7',
 '8','9','A','B',
 'C','D','*','#'};
 
volatile unsigned char NumFunction(unsigned char valPass) //Number function that checks the Keypad array and then checks the two different arrays
{
  int index = 0;                                                      
 while(index <= 9) //looping to make sure one of the values was checked
 {
  if(valPass == detectedKeyPressVal[index]) //checking to the value passed is in the array of numbers
  {
   return numArray[index]; //return the index of the number array
  }
  index++; // increment index by 1
 }
 return 0xff;  //if not anything found return FF which is not connected to anything
}

volatile unsigned char AsciiFunction(unsigned char valPass) //Ascii function that checks the keypress for an character in the press.
{
 int index = 0;
 while(index <= 15) //a while loop that loops through until all 16 have been selected
 {
  if(valPass == detectedKeyPressVal[index]) //if statement checking the value passed and the ascii array.
  {
   return AsciiArray[index]; // return the array number.
  }
  index++; // increment index by 1
 }
 return 0xff; //if not anything return FF
}