
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
// This is the defs.h header file, used to define statements to specific values.
  //define each bit.
  /*#define BIT_0 0x01
  #define BIT_1 0x02
  #define BIT_2 0x04
  #define BIT_3 0x08
  #define BIT_4 0x10
  #define BIT_5 0x20
  #define BIT_6 0x40
  #define BIT_7 0x80
  */
  //Modern Structure code
  
  struct ThisIsMyStruct
  {
   unsigned char BIT_0 : 1;
   unsigned char BIT_1 : 1;
   unsigned char BIT_2 : 1;
   unsigned char BIT_3 : 1;
   unsigned char BIT_4 : 1;
   unsigned char BIT_5 : 1;
   unsigned char BIT_6 : 1;
   unsigned char BIT_7 : 1;  
  };
  
  //instance of structure.
  typedef struct ThisIsMyStruct TIMS; //datatype
  TIMS Switches@0x01;
  TIMS LEDs@0x04;
  