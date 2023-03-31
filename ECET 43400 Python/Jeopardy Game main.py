#!/usr/bin/env python3
#
# main.py - test program to display a Jeopardy grid and
#           splash screen
#
# Original Authors: P. Pash, E. Freije
# Date: 08-Jul-2021
# Version: 0.1
# Updates:
#
# Updates for this version are for the host being able to add the names
# of the players. As well as the ability for the host to see the "Question"
# (correct answer) and select the player that would answer the question as well
# putting down if the player got the answer Right or Wrong
#
# Authors: Jennifer Herrera, George Landis, & Timothy Robinson
# Date: 5/2/2022 
# Version: 0.11
#
# Imports to run
#
#import tkinter                 # needed for command line running
import tkinter as tk
from tkinter import simpledialog
from tkinter import *          # GUI Interface
from tkinter import ttk
import os                      # needed for restart button
#import vlc                    # media player *Comment out to work without Pie*
import time                    # needed for delay routine
import sqlite3                 # sql lite for answer database
from sqlite3 import Error      # sql lite error handlers
import random                  # random number generator for daily double

#   define Main window

window = Tk()
window.title('This Is ENT Jeopardy')
window.geometry('1000x700')

#   define width and height to center window

windowWidth = 1000
windowHeight = 700

# compute the location of the window

positionRight = int(window.winfo_screenwidth()/2 - windowWidth/2)
positionDown = int(window.winfo_screenheight()/2 - windowHeight/2)

# redefine the geometry and place the window in the center

window.geometry("+{}+{}".format(positionRight, positionDown))
window.attributes('-topmost', 1)

# declare the canvas for the window, 100 pixels smaller x and y, background of green
# and give tolerance of .5 and anchor the canvas in the center of the window

canvas = Canvas(window, width=900, height=600, background="blue")
canvas['bg']='green'
canvas.place(relx=0.5, rely=0.5, anchor=CENTER)

# opening screen image

img = PhotoImage(file="JpdSplash.png")
canvas.create_image(450,300, anchor=CENTER, image=img, tags="splash_image")

# use random number to pick the daily double

dd_question = random.randint(0,29)

# main_window - function that defines the main game window

def main_window():
    
    # the following places the categories row, then the five money rows, finally
    # bind each of the 30 rectangles so they can be clicked on during the game 
    # see the disp_question_matrix function for the parameter explaination
    
    categories()
    disp_question_maxtrix(0, 100, 200, 145, "$200")
    disp_question_maxtrix(6, 200, 300, 245, "$400")
    disp_question_maxtrix(12, 300, 400, 345, "$600")
    disp_question_maxtrix(18, 400, 500, 445, "$800")
    disp_question_maxtrix(24, 500, 600, 545, "$1000")
    bind_buttons()
    
    # add a quit and restart button to lower right corner of window

    quit_button=Button(window, text="Quit", command = lambda : quit())
    quit_button.place(x=900, y=650)
    restart_button=Button(window, text="Restart", command = lambda : restart())
    restart_button.place(x=835, y=650)
    
# restart - function that destroys the main window and starts the game again

def restart():
    window.destroy()
    os.system("python3 main.py")
    
# bind_buttons - function to bind each of the 30 screen buttons to a click event
     
def bind_buttons():
    
    # each button is bound individually so each button's text can be removed
    # and each button can be disabled during the game
    
    for i in range (0, 30):
        canvas.tag_bind("playbutton"+str(i),"<Button-1>",clicked)
    
# delay - one second delay, count is number of seconds uses the clock so it
#         is not a precision timer, but good enough
    
def delay(count):
    start = time.time()
    while True:
        ### Do other stuff, it won't be blocked
        time.sleep(0.1)
        ### When 1 sec or more has elapsed...
        if time.time() - start > 1:
            start = time.time()
            count = count - 1
        ### Countdown finished, ending loop
            if count <= 0:
                break
        
# clicked event - callback routine for a click on a answer cell in the game
#                 the event is the location of where the mouse was clicked.
#                 The logic steps through the x location to determine the
#                 column clicked.  Then the logic steps through the y location
#                 to determine the row clicked.  The y or column offset
#                 is 0 - 5, whereas the x or row offset is 0 through 24 in
#                 steps of 6. The reason is to avoid duplicating a location.
#                 This event then displays the answer from the question clicked
    
def clicked(event):
    x_loc = event.x
    y_loc = event.y
    col = offset = 0
    # Find the mouse location
    if (x_loc > 20):
        col = 0
    if (x_loc > 170):
        col = 1
    if (x_loc > 320):
        col = 2
    if (x_loc > 470):
        col = 3
    if (x_loc > 620):
        col = 4
    if (x_loc > 770):
        col = 5
    
    if (y_loc > 120):
        offset = 0
    if (y_loc > 220):        
        offset = 6
    if (y_loc > 320):
        offset = 12
    if (y_loc > 420):
        offset = 18
    if (y_loc > 520):
        offset = 24

    #print ('X = %d, Y = %d'%(event.x, event.y))
    #print ('Row = %d, Col = %d, Index = %d'%(row, col, (col+offset)))
    
    # unbind the clicked button by concatenating the location with the tag name
    # "playbutton"
    # Since each rectangle is given a tag name of "playbutton" + location (0-29),
    # then the dollar amount is removed from the canvas once clicked
    
    if ((col+offset) == dd_question):
        daily_double()
    
    canvas.tag_unbind("playbutton"+str(col+offset), "<Button-1>")
    canvas.delete("playbutton"+str(col+offset))

    # display the answer from the database   
    display_answer(col+offset)
    
    # display host function to allow the host to select which player gets each
    # answer Right/Wrong
    display_host_menu(col+offset)

#player class: keeps track of players' names and scores
class Player:
    def __init__(self, name):#initialization
        self.name= name
        self.score=0
    def increase_score(self):#increase player score
        self.score += 1
    def decrease_score(self):#decrease player score
        self.score -= 1
    def get_score(self):#get player score
        return self.score
    def get_name(self):#get player name
        return self.name

selected="EMPTY"#the default is empty
#sel function: keeps track of which radio button was selected
def sel(choice):
    global selected
    if choice == 1:
        selected="P1"
    elif choice == 2:
        selected="P2"
    elif choice == 3:
        selected="P3"
# host menu function: creates host window that allows for the selection
# of right/wrong for each player and shows the correct question    
def display_host_menu(loc):
    global host_canvas
    global host_wdw
    host_wdw=Tk()
    host_wdw.title('Host Control')
    host_wdw.geometry('700x300')
    windowWidth = 700
    windowHeight = 300
    positionRight = int(window.winfo_screenwidth()/2 - windowWidth/2)
    positionDown = int(window.winfo_screenheight()/2 - windowHeight/2)
    host_wdw.geometry("+{}+{}".format(positionRight, positionDown))
    host_wdw.attributes('-topmost', 1)
    host_canvas = Canvas(host_wdw, width=700, height=300, background="blue")
    host_canvas['bg']='blue'
    host_canvas.place(relx=0.5, rely=0.5, anchor=CENTER)
    #this is how the correct question is retrieved
    cur = conn.cursor()
    cur.execute('SELECT question FROM Clue_db WHERE answer_id = ?', (loc,))
    ques = cur.fetchone()
    #this displays the correct question
    label=Label(host_wdw, text= "The correct question is: " + str(ques),font=("Helvetica", 20, "bold"), fg="yellow", bg="blue", wraplength= 350).place(x=300, y=50 )
    #PlayerSelLabel=Label(host_wdw, text= "The selected Player is " + str(Player(get_name)),font=("Helvetica", 20, "bold"), fg="yellow", bg="blue", wraplength= 350).place(x=0, y=200)
    #these are the 3 radio buttons for each player
    var = IntVar()
    r1=Radiobutton(host_wdw, text = player1Name, variable= var, bg="blue", fg="yellow", font=("Helvetica", 14, "bold"), value=1,command=lambda: sel(1)).place(x=0,y=100)
    r2=Radiobutton(host_wdw, text = player2Name, variable= var, bg="blue", fg="yellow", font=("Helvetica", 14, "bold"), value=2,command=lambda: sel(2)).place(x=0, y=135)
    r3=Radiobutton(host_wdw, text = player3Name, variable= var, bg="blue", fg="yellow", font=("Helvetica", 14, "bold"), value=3,command=lambda: sel(3)).place(x=0, y=165)
    #these are the buttons that the host can click on depending on the answer given
    Correct_button=Button(host_wdw, text="Correct", command = lambda : correct_answer()).place(x=400, y=230)
    Incorrect_button=Button(host_wdw, text="Incorrect", command = lambda : incorrect_answer()).place(x=500, y=230)

#incorrect answer function: Creates pop up window. If player is selected, it displays INCORRECT and decreases the player's score
def incorrect_answer():
    global incorrect_canvas
    global incorrect_wdw
    incorrect_wdw=Tk()
    incorrect_wdw.geometry('500x200')
    incorrect_wdw.title(':(')
    windowWidth = 500
    windowHeight = 250
    positionRight = int(window.winfo_screenwidth()/2 - windowWidth/2)
    positionDown = int(window.winfo_screenheight()/2 - windowHeight/2)
    incorrect_wdw.geometry("+{}+{}".format(positionRight, positionDown))
    incorrect_wdw.attributes('-topmost', 1)
    incorrect_canvas = Canvas(incorrect_wdw, width=500, height=250)
    incorrect_canvas['bg']='red'
    incorrect_canvas.place(relx=0.5, rely=0.5, anchor=CENTER)   
    if selected =="EMPTY":#if no player has been choosen
        say= "No player has been chosen"
    if selected=="P1":
        p1.decrease_score()
        say= "INCORRECT"
    if selected=="P2":
        p2.decrease_score()
        say= "INCORRECT"
    if selected=="P3":
        p3.decrease_score()
        say= "INCORRECT"      
    label=Label(incorrect_wdw, text= say,font=("Helvetica", 15, "bold"), bg="red", fg= "white").place(x=250, y=50, anchor= "center")   
    #this causes the window to close after a few moments
    incorrect_wdw.after(1000, incorrect_wdw.destroy)

#correct answer function: Creates pop up window. If player is selected, it displays CORRECT and increases the player's score
def correct_answer():
    global correct_canvas
    global correct_wdw
    correct_wdw=Tk()
    correct_wdw.geometry('500x200')
    correct_wdw.title(':)')
    windowWidth = 500
    windowHeight = 250
    positionRight = int(window.winfo_screenwidth()/2 - windowWidth/2)
    positionDown = int(window.winfo_screenheight()/2 - windowHeight/2)
    correct_wdw.geometry("+{}+{}".format(positionRight, positionDown))
    correct_wdw.attributes('-topmost', 1)
    correct_canvas = Canvas(correct_wdw, width=500, height=250)
    correct_canvas['bg']='green'
    correct_canvas.place(relx=0.5, rely=0.5, anchor=CENTER)   
    if selected =="EMPTY":#if no player is selected
        say= "No player has been chosen"
    if selected=="P1":
        p1.increase_score()
        say= "CORRECT"
    if selected=="P2":
        p2.increase_score()
        say= "CORRECT"
    if selected=="P3":
        p3.increase_score()
        say= "CORRECT"      
    label=Label(correct_wdw, text= say,font=("Helvetica", 15, "bold"), bg="green", fg= "white").place(x=250, y=50, anchor= "center")   
    #this causes the window to close after a few moments
    correct_wdw.after(1000, correct_wdw.destroy)  
    
 #display_answer - this function displays the answer from the database for the
#                  contestents to answer.  See the main window description
#                  to understand the parameters used to create the window   
def display_answer(loc):  
    # it is manadatory to declare the canvas and window global so that it can be
    # manipulated in other functions
    global ans_canvas
    global ans_wdw
    
    ans_wdw=Tk()
    ans_wdw.title('And The Answer Is')
    ans_wdw.geometry('700x300')

    windowWidth = 700
    windowHeight = 300

    positionRight = int(window.winfo_screenwidth()/2 - windowWidth/2)
    positionDown = int(window.winfo_screenheight()/2 - windowHeight/2)

    ans_wdw.geometry("+{}+{}".format(positionRight, positionDown))
    ans_wdw.attributes('-topmost', 1)
    
    ans_canvas = Canvas(ans_wdw, width=700, height=300, background="blue")
    ans_canvas['bg']='blue'
    ans_canvas.place(relx=0.5, rely=0.5, anchor=CENTER)
    
    # two buttons, one to close the answer screen, the other to display the question
    # button 2's command is lambda to avoid the command from executing during startup
    
    #button1 = Button(ans_canvas, text="Close", command=lambda : ans_wdw.destroy)
    #button1.place(x=625, y=250)
    button2 = Button(ans_canvas, text="Question", command=lambda : qus_wdw(loc))
    button2.place(x=600, y = 250)
    
    # get the question from the database
    
    cur = conn.cursor()
    cur.execute('SELECT clue FROM Clue_db WHERE answer_id = ?', (loc,))
    ques = cur.fetchone()
    ans_canvas.create_text(350, 150, text="%s" %(ques), justify="center",
                width=700, font=("Helvetica", 24, "bold"), fill="yellow")
    ans_wdw.update()
    
# qus_wdw - function to display the question from the database
#           when the game host clicks the question button, this function removes
#           the answer text and places the question on the small window
    
def qus_wdw(loc):
    cur = conn.cursor()
    cur.execute('SELECT question FROM Clue_db WHERE answer_id = ?', (loc,))
    answ = cur.fetchone()
    
    # might be sloppy, but it is easier to delete the canvas then put up a new
    # one with the question vs trying to delete the text.
    # The screen isn't flickering so it might be OK.
    
    ans_canvas.destroy()
    ques_canvas = Canvas(ans_wdw, width=700, height=300, background="blue")
    ques_canvas['bg']='blue'
    ques_canvas.place(relx=0.5, rely=0.5, anchor=CENTER)
    button1 = Button(ques_canvas, text="Close", command=ans_wdw.destroy)
    button1.place(x=625, y=250)
    ques_canvas.create_text(350, 150, text="%s" %(answ), justify="center",
            width=700, font=("Helvetica", 24, "bold"), fill="yellow")
    
    # imperative to update the window to refresh the display
    
    ans_wdw.update()
    
# daily_double - This function displays the daily double screen and plays the music
#                then dismisses the screen after 10 seconds

def daily_double():
    
    # opening screen image
    dd_photo = PhotoImage(file="DailyDouble.png")
    dd_img=canvas.create_image(450,300, anchor=CENTER, image=dd_photo)
    
    # play the daily double sound
    
    window.update()
    #open_player = vlc.MediaPlayer('DailyDouble.m4a')
    #open_player.play()
    
    # logic to ask for bet
    
    delay(10) # remove once implmented correctly
    
    canvas.delete(dd_img)
    
# categories - function that loads the main window canvas with the categories
#              for the game

def categories():
    # all the variables are used to move left to right in the category row
    
    init_x_pos = 0
    init_y_pos = 0
    end_x_pos = 150
    end_y_pos = 100
    init_text_x_pos = 75
    init_text_y_pos = 50
    
    # array of actual categories from the database
    
    category_list = [1,2,3,4,5,6]
    last_category = ""
    cat_index = 0
    
    # Get the categories from database

    cur = conn.cursor()
    for cats in cur.execute('SELECT category from Clue_db'):
        if (last_category != cats):
            if (cat_index == 6):
                break
            category_list[cat_index] = cats
            last_category = cats
            cat_index = cat_index+1
 
    for i in range (0, 6):
        canvas.create_rectangle(init_x_pos, init_y_pos, end_x_pos, end_y_pos, fill="blue")
        #print ("%s" %(category_list[i]))
        
        # the text is not clickable, it is static
        
        canvas.create_text(init_text_x_pos, init_text_y_pos,
                           text="%s" %(category_list[i]),
                           justify="center", width = 125,
                   font=("Helvetica", 17, "bold"), fill="yellow")
        init_x_pos+=150
        end_x_pos+=150
        init_text_x_pos+=150
        
# disp_question_matrix - this function displays the main window of dollar
#                        amount columns and rows.  The dollar_value is the text
#                        amount so the input has to be correct.  The y_offset
#                        defines the row so that tag can be created such that it
#                        is clickable and removable during the game.
    
def disp_question_maxtrix(y_offset, start_y, end_y, start_text_y, dollar_value):
    init_x_pos = 0
    end_x_pos = 150
    init_text_x_pos = 75
    for i in range (0, 6):
        canvas.create_rectangle(init_x_pos, start_y, end_x_pos, end_y,
                                fill="blue")
        canvas.create_text(init_text_x_pos, start_text_y, text=dollar_value,
                           justify="center", tags="playbutton"+str(i+y_offset),
                   font=("Helvetica", 30, "bold"), fill="yellow")
        init_x_pos+=150
        end_x_pos+=150
        init_text_x_pos+=150
        
# create_db - This function creates the SQLite database

def create_db():
    #""" create a database connection to a SQLite database """
    try:
        conn = sqlite3.connect(':memory:', isolation_level=None)
        return conn
        #print(sqlite3.version)
    except Error as e:
        print(e)

# open_db - This function opens the database file

def open_db(db_file):
    try:
        conn = sqlite3.connect(db_file, isolation_level=None)
        #print(sqlite3.version)
    except Error as e:
        print(e)
    finally:
        return conn

# create_table - This function creates the question/answer database

def create_table(conn):

    # sql statement that will be executed to create the table
    
    sql_create_table = """ CREATE TABLE IF NOT EXISTS Clue_db (
                                        id integer PRIMARY KEY,
                                        category text NOT NULL,
                                        amount text NOT NULL,
                                        answer_id integer,
                                        clue text NOT NULL,
                                        question text NOT NULL
                                    ); """
    try:
        cur = conn.cursor() # create a connection object
        cur.execute(sql_create_table)
    except Error as e:
        print(e)

# load_table - this function loads the database from the input text file
#              It is important that the text file is edited in UTF-8 format, as
#              anyother format will cause Python to fail.
#              Format of the input is: category|answer_id|amount|question|answer
#              The answer_id is the number of the cell (0 - 29) where the entry is
#              placed in the main window matrix.
#              only the answer_id is an integer, the rest are strings

def load_table(conn, clues):

    # clues is a single row list sent to this function
    # because this function loads one row at a time, the file read is done
    # in the main loop
    
    category = clues[0]
    answer_id = int(clues[1])
    amount = clues[2]
    clue = clues[3]
    question = clues[4]

    sql = ("INSERT INTO Clue_db(category, answer_id, amount, clue, question)"
    "VALUES(?, ?, ?, ?, ?)")
    data = (category, answer_id, amount, clue, question)
    try:
        cur = conn.cursor()
        cur.execute(sql, data)
        conn.commit()
        return cur.lastrowid
    except Error as e:
        print(e)
        
# get_players - this function pops up dialog to enter the main players into
#               the game
# NOT COMPLETE

#get player function: creates a window where players can enter their names 
def get_player():
    global entry
    global player_win
    global player_string
    global entryPlayer1
    global entryPlayer2
    global entryPlayer3
    canvas.delete("splash_image")
    window.update()             # force display of splash screen
    player_win = Tk()
    player_win.title("Enter Player's Names")
    player_win.geometry("400x200") 
    windowWidth = 400
    windowHeight = 200
    positionRight = int(window.winfo_screenwidth()/2 - windowWidth/2)
    positionDown = int(window.winfo_screenheight()/2 - windowHeight/2)
    player_win.geometry("+{}+{}".format(positionRight, positionDown))
    player_win.attributes('-topmost', 1)
    #instruction label
    label=Label(player_win, text="Please Enter Names of Contestants", font=("Courier 10 bold")).pack()
    #lines below create widgets where the players' names can be entered
    entryPlayer1 = Entry(player_win, width=30)
    entryPlayer1.focus_set()
    entryPlayer1.insert(0, "Enter Player 1's name here")
    entryPlayer1.pack()
    entryPlayer2 = Entry(player_win, width=30)
    entryPlayer2.focus_set()
    entryPlayer2.insert(0, "Enter Player 2's name here")
    entryPlayer2.pack()
    entryPlayer3 = Entry(player_win, width=30)
    entryPlayer3.focus_set()
    entryPlayer3.insert(0, "Enter Player 3's name here")
    entryPlayer3.pack()
    #button
    okay_button = Button(player_win, text="Okay", width=10, command= okay_button_click).place(x=200, y=125, anchor="center") 


#okay button function: gets text entered, creates player objects, and closes window
def okay_button_click():
    global player1Name
    global player2Name
    global player3Name
    global p1
    global p2
    global p3
    #stores player names in variables
    player1Name=entryPlayer1.get()
    player2Name=entryPlayer2.get()
    player3Name=entryPlayer3.get()
    #creates 3 player objects
    p1 =Player(player1Name)
    p2 =Player(player2Name)
    p3 =Player(player3Name)
    #this closes window
    player_win.destroy()


# Create and load database
# this is inline code in the main section of this code

conn = create_db()
create_table(conn)

# the following opens the question database and then reads a line at a time
# then calls a routine to load the row into the database

clues_file = open('Clues_V3.txt','r')     # can't emphasize enough this must be UTF-8
line = clues_file.readline().rstrip('\n') # inital read because of the while loop

while line:
    Clues = line.split("|") # take advantage of a routine to split the clues into
                            # a list of fields that are loaded into the database
    load_table(conn, Clues)
    line = clues_file.readline().rstrip('\n')
    
clues_file.close()

# Start of main program

window.update()   # forces update and re-display of splash screen

# Play the opening introduction music

# UNCOMMENT WHEN READY TO DEMO

#open_player = vlc.MediaPlayer('ThisIsJeopardy.m4a')
#open_player.play()

# the delay routine allows the music to play to closure

#CHANGE TO 25 WHEN READY TO DEMO

#delay(25)

# Get the player names

get_player()

# Update the main window to show the categories and dollar amount array (6 x 5)
# and then start the main window loop

print ("Daily Double: ", dd_question)

main_window()

window.mainloop()
