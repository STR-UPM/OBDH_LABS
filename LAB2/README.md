# LAB2

This directory contains two simple embedded programs that can be used to test the installation of the GNAT cross-compilatopm tools and the Ada Drivers Library for the STM32F4 DISCO board.

- `LED_Demo` does not use the Ada Drivers Library.
- `Blink_LEDS` uses the Ada Drivers Library.

Both programs can be compiled and flashed to the STM32F4 DISCO board using the `gpr` files in the respective directories. The behaviour is similar, blinking the LEDs on the board with different patterns.
