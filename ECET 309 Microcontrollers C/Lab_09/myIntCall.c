#include <hidef.h>      /* common defines and macros */
#include "derivative.h"      /* derivative-specific definitions */
#include "defs.h"
#include "protos.h"
/*************************************************************
 * This is the interupts.C File                              *
 * Name: George Landis                                       *
 * Title of Program: Lab 09 Task Scheduler & Motor PWM       *
 *                                                           *
 * Class:ECET 30903                                          *
 * Due Date:3/25/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/
 //Init Interrupt function
 void InitializeInts()
 {
  ENABLE_INT;
  ECT_TIOS_IOS1 = 1;
  ECT_TIE_C1I = 1;
  ECT_TFLG1 = 0xFF;
  ECT_TC1 += offSetVar;
  ECT_TSCR1_TEN = 1;  
 }
 //interrupt Fun
 void interrupt IntRuptFun()
 {
  ECT_TFLG1_C1F = 1;
  ECT_TC1 += offSetVar;
  
  if((interCnt % 50) == 0)
  {
   ledZeroTog++;
  }
  if((interCnt % 125) == 0)
  {
   ledOneTog++;
  }
  if((interCnt % 1000) == 0)
  {
   ledTwoTog++;
  }
  if((interCnt % 2500) == 0)
  {
   chkSWCount++;
  }
  if((interCnt % 1) == 0)
  {
   checkMoto++;
  }
  interCnt++;  
 }