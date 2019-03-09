'ICS20 Period 2 - 2019/03/05 - Deniz Jasarbasic - NBA Trivia Game
'

' Declaring each function used

Declare Sub printMiddle (ByVal statement as String, textColor as Integer)
Declare Function locateMiddle (statement as String) as Integer


Sub printMiddle (ByVal statement as String, textColor as Integer)
    
    ' Set default color as white if text number is invalid
    If textColor > 15 OR textColor < 0 Then
        textColor = 15
    End If
    
    ' Set the color to the parameter given
    Color textColor
    
    ' Locate the center based on the inputted text
    Locate 0, Loword(width) / 2 - Len(statement) /2
    
    ' Print the inputted text centered!
    Print statement
    
    ' Set color back to 15
    Color 15
End Sub


' Function mainly meant for input statemenets where printCenter cannot be applied to
Function locateMiddle(statement as String) as Integer
    ' Locate the center based on the inputted text 
    Dim centerValue as Integer
    centerValue = Loword(width) / 2 - Len(statement) /2
    ' Instead of PRINTING the inputted text, return it in the function instead
    Return centerValue
End Function

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
Dim as Integer currentamount, totalamount, percentage

'Initilization of variables
userName = " "
startGame = " "
totalamount = 250
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

printMiddle ("Welcome to Deniz's NBA Trivia Game!", 4)

printMiddle ("Get ready for some exciting questions about the NBA!", 7)
Print " "
Sleep 3000



' Introduces user to the game, then asks for their name 
Print ""
Print ""
Print ""
Print ""

Print tab(40); "Hello, user welcome to an NBA themed trivia game."
Print tab(43); "First, before we start, what is your name?"

Print ""
Print ""

Color 1
Locate 12, locateMiddle("Name: ")
Input "Name: ", userName

Color 7
Cls

Locate 5
Print tab(40); "Hello " + userName + ", let's get this game started!"
Print " "
Print " "
Print " "

printMiddle ("You better SLAMDUNK this quiz!", 7)

printMiddle ("            ________             ", 7)
printMiddle ("    o      |   __   |            ", 7)
printMiddle ("      \_ O |  |__|  |            ", 7)
printMiddle ("   ____/ \ |___WW___|            ", 7)
printMiddle ("   __/   /     ||                ", 7)
printMiddle ("               ||                ", 7)
printMiddle ("               ||                ", 7)
printMiddle ("_______________||________________", 7)

Color 112
Sleep 5000
Cls

Locate 5
Color 5
Print tab(34); "To start off, you will be asked five questions about the NBA."
Color 7
Print tab(36); "You must answer either A, B, C or D to select an answer."
Sleep 7000
Cls


' Now that we know who the user is, the quiz may begin!
' Play again (while loop)
While Ucase(playAgain) = "Y"

' Variable is initilized here so the the user's score is reset to 0 every time the game restarts
userScore = 0

    While answerQuestion_1 <> "A" and answerQuestion_1 <> "B" and answerQuestion_1 <> "C" and answerQuestion_1 <> "D"
        
    'Question 1:
        Print "What year was the National Basketball Association first established?"
        Print " "
        Print tab (5); "A. 1935"
        Print tab (5); "B. 1945"
        Print tab (5); "C. 1946"
        Print tab (5); "D. 1958"
        Print " "
        Input "Answer? (A,B,C or D): ", answerQuestion_1
    
        if answerQuestion_1 = "C" or answerQuestion_1 = "c" then
            userScore = userScore + 1 
            Print " "
        Color 2
            Print "You are correct! The NBA got its start as the Basketball Association of America in 1946"
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press Enter to continue", continueQuestion
            Cls
        elseif Ucase(answerQuestion_1) = "A" or Ucase(answerQuestion_1) = "B" or Ucase(answerQuestion_1) = "D" then 
            Color 4
            userScore = userScore + 0
            Print " "
            Print "Im sorry, but the correct answer is C. (1946)"
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press ENTER to continue", continueQuestion
            Cls
        else
            Cls
            Print " "
            Print " "
            printMiddle ("INVALID response, try again! Remeber use A, B, C or D to respond", 4)
            Sleep 2000
            Cls
        end if 
    Wend

'Question 2:
    Print "What team was the most recent NBA champion?"
    Print " "
    Print tab (5); "A. The Chicago Bulls"
    Print tab (5); "B. The Toronto Raptors"
    Print tab (5); "C. The Cleveland Cavaliers"
    Print tab (5); "D. The Golden State Warriors"
    Print " "
    Input "Answer? (A,B,C or D): ", answerQuestion_2

    if answerQuestion_2 = "D" or answerQuestion_2 = "d" then
        userScore = userScore + 1
        Print " "
        Color 2
        Print "You are correct! The Golden State Warriors won the 2018 NBA Championship"
        Color 7
        Print "SCORE: "; userScore
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    elseif answerQuestion_2 = "A" or answerQuestion_2 = "B" or answerQuestion_2 = "C" then
        Color 4
        userScore = userScore + 0
        Print " "
        Print "Im sorry, but the correct answer is D. (The Golden State Warriors)"
        Color 7
        Print "SCORE: "; userScore
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    else 
        While answerQuestion_2 <> "A" and answerQuestion_2 <> "B" and answerQuestion_2 <> "C" and answerQuestion_2 <> "D"
            Cls
            Print " "
            Print " "
            printMiddle ("INVALID response, please try again!", 4)
            Sleep 2000
            Cls
            Print "What year was the National Basketball Association first established?"
            Print " "
            Print tab (5); "A. 1935"
            Print tab (5); "B. 1945"
            Print tab (5); "C. 1946"
            Print tab (5); "D. 1958"
            Print " "
            Input "Answer? (A,B,C or D): ", answerQuestion_1
        Wend
    end if  


'Question 3:
    Print "Who is the most recent NBA MVP?"
    Print " "
    Print tab (5); "A. Stephen Curry"
    Print tab (5); "B. James Harden"
    Print tab (5); "C. Lebron Johnson"
    Print tab (5); "D. Kyrie Westbrook"
    Print " "
    Input "Answer? (A,B,C or D): ", answerQuestion_3

    if answerQuestion_3 = "B" or answerQuestion_3 = "b" then
        userScore = userScore + 1
        Print " "
        Color 2
        Print "You are correct! James Harden won the 2018 KIA MVP Award"
        Color 7
        Print "SCORE: "; userScore
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    else
        Color 4
        userScore = userScore + 0
        Print " "
        Print "Im sorry, but the correct answer is B. (James Harden)"
        Color 7
        Print "SCORE: "; userScore
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
    Input "Answer? (A,B,C or D): ", answerQuestion_4

    if answerQuestion_4 = "D" or answerQuestion_4 = "d" then
        userScore = userScore + 1
        Print " "
        Color 2
        Print "You are correct! The Boston Celtics currently have 17 championship, the most in NBA history! "
        Color 7
        Print "SCORE: "; userScore
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    else
        Color 4
        userScore = userScore + 0
        Print " "
        Print "Im sorry, but the correct answer is D. (The Boston Celtics)"
        Color 7
        Print "SCORE: "; userScore
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    end if 


    'Question 5:
    Print "What player holds the record for the most points in an NBA game?"
    Print " "
    Print tab (5); "A. Kobe Bryant"
    Print tab (5); "B. Lebron James"
    Print tab (5); "C. Wilt Chamberlain"
    Print tab (5); "D. Michael Jordan"
    Print " "
    Input "Answer? (A,B,C or D): ", answerQuestion_5

    if answerQuestion_5 = "C" or answerQuestion_5 = "c" then
        userScore = userScore + 1
        Print " "
        Color 2
        Print "You are correct! Wilt Chamberlain currently holds the record for most points in a game (100 Pts)!"
        Color 7
        Print "SCORE: "; userScore
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    else
        Color 4
        userScore = userScore + 0
        Print " "
        Print "Im sorry, but the correct answer is C. (Wilt Chamberlain)"
        Color 7
        Print "SCORE: "; userScore
        Print " "
        Input "Press ENTER to continue", continueQuestion
        Cls
    end if 
    
    ' Congratulates the user the they completed the trivia game
    Color 2
    printMiddle ("Congratulations! You have sucessfully completed the quiz!", 2)
    Color 7
    Print " "
    ' Determines user's score and displays it as a fraction
    if userScore = 5 then
        Print " "
        printMiddle ("You scored perfect! You're an expert on the NBA!", 7)
        Print " "
    end if

    if userScore = 4 then
        Print " "
        printMiddle ("Congrats, you got 4 out of 5! It looks like you know your stuff about the NBA", 7)
        Print " "
    end if
    
    if userScore = 3 then
        Print " "
        printMiddle ("You got 3 out of 5, better luck next time!", 7)
        Print " "
    end if
    
    if userScore = 2 then
        Print " "
        printMiddle ("You only got 2 out of 5, better luck next time!", 7)
        Print " "
    end if
 
    if userScore = 1 then
        Print " "
        printMiddle ("You only got 1 answer correct, yikes!", 7)
        Print " "
    end if
    
    if userScore = 0 then
        Print " "
        printMiddle ("You 0 out of 5, yikes!", 7) 
        Print " "
    end if
    
    ' User is prompted with a message asking if they want to play again (While Loop)
    Locate 16, locateMiddle("Would you like to play again? ")
    Input "Would you like to play again (y/n)", playAgain
    cls
Wend