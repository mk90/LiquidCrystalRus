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

 created 05 May 2009
 by Ilya V. Danilov http://mk90.ru/
 modified 23 Мay 2010
 by Ilya V. Danilov http://mk90.ru/
 modified 27 Jul 2011
 by Ilya V. Danilov http://mk90.ru/

*/

#include <LiquidCrystalRus.h>
LiquidCrystalRus lcd(12, 10, 11, 5, 4, 3, 2);

void setup() {}

void loop() {
  lcd.print("АБВГДЕЁЖЗИЙКЛМНО");
  delay(3000);
  lcd.clear();
  lcd.print("ПРСТУФХЦЧШЩЪЫЬЭЮ");
  delay(3000);
  lcd.clear();
  lcd.print("Я");
  delay(3000);
  lcd.clear();
  lcd.print("абвгдеёжзийклмно");
  delay(3000);
  lcd.clear();
  lcd.print("прстуфхцчшщъыьэю");
  delay(3000);
  lcd.clear();
  lcd.print("я");
  delay(3000);
  lcd.clear();
}


