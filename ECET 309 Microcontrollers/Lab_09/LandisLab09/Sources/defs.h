#define ENABLE_INT asm cli
/*************************************************************
 * This is the defs.h File                                   *
 * Name: George Landis                                       *
 * Title of Program: Lab 09 Task Scheduler & Motor PWM       *
 *                                                           *
 * Class:ECET 30903                                          *
 * Due Date:3/25/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/
 
 volatile unsigned int interCnt = 0;
 volatile unsigned int ledZeroTog = 0;
 volatile unsigned int ledOneTog = 0;
 volatile unsigned int ledTwoTog = 0;
 volatile unsigned int offSetVar = 16000;
 
 volatile unsigned int chkSWCount = 0;
 static volatile unsigned char speedF = 0;
 volatile unsigned int checkMoto = 0;
 