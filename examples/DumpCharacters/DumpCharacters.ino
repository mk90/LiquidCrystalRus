/*
  LiquidCrystalRus Library - Displaying russian alphabet

 Demonstrates cyrillic symbols on a 16x2 LCD display.  

  The circuit:
 * LCD RS pin to digital pin 12
 * LCD RW pin to digital pin 10 (or to GND)
 * LCD Enable pin to digital pin 11
 * LCD D4 pin to digital pin 5
 * LCD D5 pin to digital pin 4
 * LCD D6 pin to digital pin 3
 * LCD D7 pin to digital pin 2
 * 10K resistor:
 * ends to +5V and ground
 * wiper to LCD VO pin (pin 3)

 created 01 Mar 2021
 by Ilya V. Danilov http://mk90.org/

*/

#include <LiquidCrystalRus.h>
LiquidCrystalRus lcd(12, 10, 11, 5, 4, 3, 2);

void setup() {
  // set up the LCD's number of rows and columns: 
  lcd.begin(16, 2);
}

void loop() {
  char c[17];
  c[16] = '\0';
  for (int i=0;i<16;i++) {
    lcd.clear();
    lcd.print(i*16,HEX);
    lcd.print(" - ");
    lcd.print(i*16+15,HEX);
    lcd.setCursor(0,1);
    for (int k=0;k<16;k++) {
      c[k] = i*16+k;
    }
    lcd.print(c);
    delay(3000);
  }
}

