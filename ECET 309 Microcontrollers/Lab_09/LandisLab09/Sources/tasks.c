#include <hidef.h>      /* common defines and macros */
#include "derivative.h"      /* derivative-specific definitions */
#include "protos.h"
/*************************************************************
 * This is the Tasks.C File                                  *
 * Name: George Landis                                       *
 * Title of Program: Lab 09 Task Scheduler & Motor PWM       *
 *                                                           *
 * Class:ECET 30903                                          *
 * Due Date:3/25/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/
 extern volatile unsigned int interCnt;
 extern volatile unsigned int ledZeroTog;
 extern volatile unsigned int offSetVar;
 extern volatile unsigned int ledOneTog;
 extern volatile unsigned int ledTwoTog;
 
 extern volatile unsigned int chkSWCount;
 extern volatile unsigned char speedF;
 extern volatile unsigned int checkMoto;
  
 void TaskMakes()
 {
  if (ledZeroTog > 0)
  {
   ledZeroTog --;
   TogLEDZero();
  }
  if (ledOneTog > 0)
  {
   ledOneTog --;
   TogLEDOne();
  }
  if (ledTwoTog > 0)
  {
   ledTwoTog --;
   TogLEDTwo();
  }
  //motor
  if(chkSWCount > 0)
  {
   chkSWCount --;
   checkSWMeth();
  }
  if(checkMoto > 0)
  {
   checkMoto --;
   CheckMotoMeth();
  }
 }
 
 void checkSWMeth()
 {     
  if(PORTB_PB0)
  {
   speedF = 1;
  }
  else
  {
   speedF = 0;
  }
 }
 
 void CheckMotoMeth()
 {
  static volatile unsigned int interCount = 0;
  interCount ++;
  if(speedF && (interCount < 9))
  {
   PTP |= 0x01;
  }
  else if((!speedF) && (interCount < 3))
  {
   PTP |= 0x01;
  }
  else
  {
   PTP &= ~0x01;
  }
  if(interCount >= 10)
  {
   interCount = 0;
  }
 }
 void TogLEDZero()
 {
   PORTC_PC0 ^= 1;
 }
 
 void TogLEDOne()
 {
   PORTC_PC1 ^= 1;
 }
 
 void TogLEDTwo()
 {
   PORTC_PC2 ^= 1;
 }             