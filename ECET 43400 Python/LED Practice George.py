from gpiozero import LED, Button
import signal
import vlc

led = LED(21)
button = Button(23)
open_player = vlc.MediaPlayer('windows-xp-startup.mp3')

def pressed():
    led.toggle()
    open_player.play() if led.value == 1 else open_player.release()
    print("Button pressed: LED has been toggled")                                             # (5)
    

#led.source = button
button.when_pressed = pressed

print("Press button to turn LED on and off.")

signal.pause() # Stops program from exiting.
