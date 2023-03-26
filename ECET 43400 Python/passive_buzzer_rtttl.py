"""
George Landis
Lab Module 08
ECET 43400
3/11/22

File: chapter08/passive_buzzer_rtttl.py

Making sound with PWM

Dependencies:
  pip3 install pigpio rtttl
"""
import pigpio
from time import sleep
from rtttl import parse_rtttl

pi = pigpio.pi()

# A Hardware PWM capable GPIO (12, 13, 18 or 19)
BUZZER_GPIO=12  # Hardware PWM Channel GPIO.

# Search web for "RTTTL Songs" to find other scores.
rtttl_score = parse_rtttl("Muppets:d=4,o=5,b=250:c6,c6,a,b,8a,b,g,p,c6,c6,a,8b,8a,8p,g.,p,e,e,g,f,8e,f,8c6,8c,8d,e,8e,8e,8p,8e,g,2p,c6,c6,a,b,8a,b,g,p,c6,c6,a,8b,a,g.,p,e,e,g,f,8e,f,8c6,8c,8d,e,8e,d,8d,c")      # (1)

# Use 50% for even on/off oscillation of passive buzzer.
# Note: 100% will not work becasue 100% = always on, so buzzer will never oscillate.
duty_cycle_pc = 2 # >0% to <100%

# pi.hardware_PWM() takes a duty_cycle param 0..1000000
duty_cycle = (int)(1000000 * (duty_cycle_pc / 100))

try:
    print("Playing " + rtttl_score['title'])

    for note in rtttl_score['notes']:                                                             # (2)
        frequency = int(note['frequency']) # hardware_PWM() expects an integer parameter.
        duration = note['duration'] # Milliseconds
        print(frequency, duration, duty_cycle)
        pi.hardware_PWM(BUZZER_GPIO, frequency, duty_cycle)                                       # (3)
        sleep(duration/1000)                                                                      # (4)

    print("Finished")

except KeyboardInterrupt:
    print("Bye")

finally:
    pi.hardware_PWM(BUZZER_GPIO, 0, 0) # Buzzer Off
    pi.stop() # PiGPIO Cleanup
