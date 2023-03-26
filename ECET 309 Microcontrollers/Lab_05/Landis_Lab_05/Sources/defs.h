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
  // This is the defs.h header file, used to define statements to specific values.
  //define each bit.
  #define BIT_0 0x01
  #define BIT_1 0x02
  #define BIT_2 0x04
  #define BIT_3 0x08
  #define BIT_4 0x10
  #define BIT_5 0x20
  #define BIT_6 0x40
  #define BIT_7 0x80
  
  //Macro definitions
  #define LED_ENABLED(n) DDRC |= BIT_##n
  #define LED_ON(n) LEDs |= BIT_##n
  #define LED_OFF(n) LEDs &= ~BIT_##n
  #define SWITCH_STATE(n) Switches & BIT_##n 