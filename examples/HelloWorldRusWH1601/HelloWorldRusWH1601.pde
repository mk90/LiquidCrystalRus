/*
  LiquidCrystal Library - Hello World
 
 Demonstrates the use a 16x1 WH1601 LCD display.  

 The LiquidCrystal library works with all LCD displays that are compatible with the 
 Hitachi HD44780 driver. There are many of them out there, and you
 can usually tell them by the 16-pin interface.
 
 This sketch prints "Hello World! :)" to the LCD.
  
  The circuit:
 * LCD RS pin to digital pin 12
 * LCD RW pin to digital pin 10
 * LCD Enable pin to digital pin 11
 * LCD D4 pin to digital pin 5
 * LCD D5 pin to digital pin 4
 * LCD D6 pin to digital pin 3
 * LCD D7 pin to digital pin 2
 * 10K resistor:
 * ends to +5V and ground
 * wiper to LCD VO pin (pin 3)
 
 Library originally added 18 Apr 2008
 by David A. Mellis
 library modified 5 Jul 2009
 by Limor Fried (http://www.ladyada.net)
 example added 9 Jul 2009
 by Tom Igoe
 modified 25 July 2009
 by David A. Mellis
 modified 23 May 2010
 by Ilya V. Danilov see http://mk90.blogspot.com/search/label/LCD
 */

// include the library code:
#include <LiquidCrystalRus.h>

// initialize the library with the numbers of the interface pins
LiquidCrystalus lcd(12, 10, 11, 5, 4, 3, 2);

void setup() {
  // set up the LCD's number of rows and columns: 
  lcd.begin(16, 2);
  // set translation mode
  lcd.setDRAMModel(LCD_DRAM_WH1601);
  // Print a message to the LCD.
  lcd.print("Привет, мужики!");
}

void loop() {
}

