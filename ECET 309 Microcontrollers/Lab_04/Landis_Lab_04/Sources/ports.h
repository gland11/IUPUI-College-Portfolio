
/*************************************************************
 *                                                           *
 * Name: George Landis                                       *
 * Title of Program: Lab 04 I/O Using Logic Operations,      * 
 *                          Bit Fields LEDs & Switches       *
 * Date:2/2/19                                               *
 * Class:ECET 30903                                          *
 * Due Date:2/05/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/
//This is the ports.h file where the port declarations will be declared

//Traditional Port Decleration
//#define Switches (*(volatile unsigned char*)(0x01))
//#define LEDs (*(volatile unsigned char*)(0x04))
//Both Traditional and Modern
#define DDRC (*(volatile unsigned char*)(0x06))
