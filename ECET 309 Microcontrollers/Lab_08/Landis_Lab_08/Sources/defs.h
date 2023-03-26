/*************************************************************
 *                                                           *
 * Name: George Landis                                       *
 * Title of Program: Lab 08 T-Bird Turn Signal               *
 *                                                           *
 * Class:ECET 30903                                          *
 * Due Date:3/04/19                                          *
 * Description:                                              *
 *                                                           *
 *                                                           *
 *************************************************************/
#define LEFT_TURN  PORTB = 0x80; //Switch 7
#define RIGHT_TURN PORTB = 0x01; //Switch 0
#define FLASH      PORTB = 0x10; //Switch 4

#define LEFT_0     PORTC = 0x20; //0010 0000
#define LEFT_1     PORTC = 0x60; //0110 0000
#define LEFT_2     PORTC = 0xE0; //1110 0000

#define RIGHT_0    PORTC = 0x04; //0000 0100
#define RIGHT_1    PORTC = 0x06; //0000 0110
#define RIGHT_2    PORTC = 0x07; //0000 0111

#define CLEAR_ALL  PORTC = 0x00; //0000 0000

#define FLASH_ON   PORTC = 0xE7; //1110 0111


                                