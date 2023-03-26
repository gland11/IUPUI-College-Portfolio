/*************************************************************
 *                                                           *
 * Name: George Landis                                       *
 * Title of Program: Lab 05 Hardware Abstraction Layer: I/O  * 
 *                          Using MacrosLEDs and Switches    *
 * Date:2/2/19                                               *
 * Class:ECET 30903                                          *
 * Due Date:2/05/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/
//This is the ports.h file where the port declarations will be declared

//Traditional Port Decleration
#define Switches (*(volatile unsigned char*)(0x01))
#define LEDs (*(volatile unsigned char*)(0x04))
#define DDRC (*(volatile unsigned char*)(0x06))
