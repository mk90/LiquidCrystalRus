#include <LiquidCrystalRus.h>
#include <SPI.h>

// include the library code:
// initialize the library with the number of the sspin 
//(or the latch pin of the 74HC595)
LiquidCrystalRus lcd(10);

void setup() {
  // set up the LCD's number of columns and rows: 
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("Привет тебе хороший человек!");
  
}

void loop() {
  lcd. autoscroll();
  delay(500);
  // set the cursor to column 0, line 1
  // (note: line 1 is the second row, since counting begins with 0):
  lcd.setCursor(0,1);
  // print the number of seconds since reset:
  lcd.print(millis()/1000);
}
