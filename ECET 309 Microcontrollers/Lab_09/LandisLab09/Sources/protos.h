
/*************************************************************
 * This is the protos.h File                                 *
 * Name: George Landis                                       *
 * Title of Program: Lab 09 Task Scheduler & Motor PWM       *
 *                                                           *
 * Class:ECET 30903                                          *
 * Due Date:3/25/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/
 //myIntCall.c
 void InitializeInts();
 void interrupt IntRuptFun();
 
 //tasks.c file
 void TaskMakes();
 void TogLEDZero();
 void TogLEDOne();
 void TogLEDTwo();
 
 void CheckMotoMeth();
 void checkSWMeth();