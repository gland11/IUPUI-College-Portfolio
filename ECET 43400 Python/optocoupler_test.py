"""
George Landis
2/21/22
Lab 06
2/25/22

File: chapter07/optocoupler_test.py

Control an Optocoupler from a GPIO Pin.

Dependencies:
  pip3 install pigpio

Built and tested with Python 3.7 on Raspberry Pi 4 Model B
"""
import pigpio
from time import sleep

GPIO_PIN = 21
pi = pigpio.pi()

try:
    for x in range(3):
	    # Note:  Circuit is wired as ACTIVE LOW.
	    pi.write(GPIO_PIN, pigpio.LOW) # On.                       # (1)
	    print("On")
	    sleep(6)
	    pi.write(GPIO_PIN, pigpio.HIGH)  # Off.                    # (2)
	    print("Off")
	    sleep(2)

except KeyboardInterrupt:
    print("Bye")

finally:
    pi.write(GPIO_PIN, pigpio.HIGH) # Off.
    pi.stop() # PiGPIO cleanup.

