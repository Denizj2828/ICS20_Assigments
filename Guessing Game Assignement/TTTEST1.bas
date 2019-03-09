'ICS20 Period 2 - 2019/03/05 - Deniz Jasarbasic - NBA Trivia Game
'

' Declaring each function used


' Declaring all variables
Dim userName as String 
Dim startGame as String
Dim playAgain as String
Dim userScore as Integer
Dim continueQuestion as String
Dim question_1 as String 
Dim answerQuestion_1 as String
Dim question_2 as String
Dim answerQuestion_2 as String
Dim question_3 as String
Dim answerQuestion_3 as String
Dim question_4 as String 
Dim answerQuestion_4 as String
Dim question_5 as String 
Dim answerQuestion_5 as String
Dim as Integer currentamount, totalamount = 250, percentage

'Initilization of variables
userName = " "
startGame = " "
userScore = 0
playAgain = "Y"
continueQuestion = " "
question_1 = " "
answerQuestion_1 = " "
question_2 = " "
answerQuestion_2 = " "
question_3 = " "
answerQuestion_3 = " "
question_4 = " "
answerQuestion_4 = " "
question_5 = " "
answerQuestion_5 = " "

' Welcome page 
' Loading Game feature
Color 4
Print tab(30); "  _  _ ___   _     _____    _     _         ___ "                
Print tab(30); " | \| | _ ) /_\   |_   _| _(_)_ _(_)__ _   / __|__ _ _ __  ___  "  
Print tab(30); " | .` | _ \/ _ \    | || '_| \ V / / _` | | (_ / _` | '  \/ -_) " 
Print tab(30); " |_|\_|___/_/ \_\   |_||_| |_|\_/|_\__,_|  \___\__,_|_|_|_\___| "
                                                               
Print " "
Print " "
Print " "
Print " "

Color 4
Print tab(45); "Welcome to Deniz's NBA Trivia Game!"
Color 7
Print tab(35); "Get ready for some exciting questions about the NBA!"
Print " "
Sleep 3000

Do
Cls 
currentamount += 1
percentage = (currentamount*100)\totalamount
Print tab(50); "GOOD LUCK! AND HAVE FUN!"
Print " "
Color 4
print tab(56); "LOADING GAME"
Color 2
print tab(61); str(percentage)+"% :"
for j as integer = 0 to 10
   if j<=(percentage\10) then
       print "==========";
   else
       print "----------";
   end if
next
print ""

sleep 1,1
loop until currentamount=totalamount

Color 7
print tab(38); "The game has loaded. Press any key to continue"
sleep
Cls

' Introduces user to the game, then asks for their name 
Print " "
Print " "
Print "Hello, user welcome to an NBA themed trivia game."
Input "First, before we start, what is your name? ", userName
Cls
Locate 5
Print tab(40); "Hello " + userName + ", let's get this game started!"
Sleep 3000
Cls
Locate 5
Color 5
Print tab(35); "To start off, you will be asked five questions about the NBA."
Color 7
Print tab(35); "You must answer either A, B, C or D to select an answer."
Sleep 3000
Cls


'Now that we know who the user is, the quiz may begin!

While playAgain = "Y" or playAgain = "y"     ' Play again loop

'Question 1:
    Print "What year was the National Basketball Association first established?"
    Print " "
    Print tab (5); "A. 1935"
    Print tab (5); "B. 1945"
    Print tab (5); "C. 1946"
    Print tab (5); "D. 1958"
    Print " "
    Input "Answer? ", answerQuestion_1

    if answerQuestion_1 = "C." or answerQuestion_1 = "C" then
        Print " "
        Color 2
        Print "You are correct! The NBA got its start as the Basketball Association of America in 1946"
        Color 7
        Print " "
        Input "Press Enter to continue", continueQuestion
        Cls
    else
        Color 4
        Print " "
        Print "Im sorry, but the correct answer is C. (1946)"
        Color 7
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    end if 


'Question 2:
    Print "What team was the most recent NBA champion?"
    Print " "
    Print tab (5); "A. The Chicago Bulls"
    Print tab (5); "B. The Toronto Raptors"
    Print tab (5); "C. The Cleveland Cavaliers"
    Print tab (5); "D. The Golden State Warriors"
    Print " "
    Input "Answer? ", answerQuestion_2

    if answerQuestion_2 = "D." or answerQuestion_2 = "D" then
        Print " "
        Color 2
        Print "You are correct! The Golden State Warriors won the 2018 NBA Championship"
        Color 7
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    else
        Color 4
        Print " "
        Print "Im sorry, but the correct answer is D. (The Golden State Warriors)"
        Color 7
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    end if 


'Question 3:
    Print "Who is the most recent NBA MVP?"
    Print " "
    Print tab (5); "A. Stephen Curry"
    Print tab (5); "B. James Harden"
    Print tab (5); "C. Lebron Johnson"
    Print tab (5); "D. Kyrie Westbrook"
    Print " "
    Input "Answer? ", answerQuestion_3

    if answerQuestion_3 = "B." or answerQuestion_3 = "B" then
        Print " "
        Color 2
        Print "You are correct! James Harden won the 2018 KIA MVP Award"
        Color 7
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    else
        Color 4
        Print " "
        Print "Im sorry, but the correct answer is B. (James Harden)"
        Color 7
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    end if 


'Question 4:
    Print "Which team has won the most NBA Championships?"
    Print " "
    Print tab (5); "A. The Los Angeles Lakers"
    Print tab (5); "B. The Vancouver Grizzles "
    Print tab (5); "C. The Golden State Warriors"
    Print tab (5); "D. The Boston Celtics"
    Print " "
    Input "Answer? ", answerQuestion_4

    if answerQuestion_4 = "D." or answerQuestion_4 = "D" then
        Print " "
        Color 2
        Print "You are correct! The Boston Celtics currently have 17 championship, the most in NBA history! "
        Color 7
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    else
        Color 4
        Print " "
        Print "Im sorry, but the correct answer is D. (The Boston Celtics)"
        Color 7
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    end if 


    'Question 5:
    Print "What player holds the record for the most points in an NBA game?"
    Print " "
    Print tab (5); "a. Kobe Bryant"
    Print tab (5); "b. Lebron James"
    Print tab (5); "c. Wilt Chamberlain"
    Print tab (5); "d. Michael Jordan"
    Print " "
    Input "Answer? ", answerQuestion_4

    if answerQuestion_4 = "C." or answerQuestion_4 = "C" then
        Print " "
        Color 2
        Print "You are correct! Wilt Chamberlain currently holds the record for most points in a game (100 Pts)!"
        Color 7
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    else
        Color 4
        Print " "
        Print "Im sorry, but the correct answer is C. (Wilt Chamberlain)"
        Color 7
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    end if 
    Input "Do you want to play again (y/n)", playAgain
    cls
Wend

Sleep








