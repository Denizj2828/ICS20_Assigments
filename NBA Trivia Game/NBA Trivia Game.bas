'ICS20 Period 2 - 2019/03/05 - Deniz Jasarbasic - NBA Trivia Game

'Program Description: This is an NBA trivia game, where the user is asked five questions 
'about the NBA. This NBA trivia game is designed to greet the user, ask their name 
'and test their NBA knowlodge with five questions. To answer each question, the user must 
'select A, B, C or D. The program will tell the user if their answer is correct or not. 
'If the user enters any other character  other then A, B, C or D, the question will reset.
'After they complete the trivia game, the user is asked if they would like to either
'play again or close the game.


'Declaring each function in order to optimize the code 

'Function for print text in the middle of the screen
Declare Sub printMiddle (ByVal statement as String, textColor as Integer)
'Function for locating the middle of the screen
Declare Function locateMiddle (statement as String) as Integer


Sub printMiddle (ByVal statement as String, textColor as Integer)
    
    'Set default color as white if text number is invalid
    If textColor > 15 OR textColor < 0 Then
        textColor = 15
    End If
    
    'Set the color to the parameter given
    Color textColor
    
    'Locates the center based on the inputted text
    Locate 0, Loword(width) / 2 - Len(statement) /2
    
    'Prints the inputted text in the center
    Print statement
    
    'Set color back to 15
    Color 15
    
End Sub


'Function used when printMiddle can't be used (ex: Input statements)
Function locateMiddle(statement as String) as Integer
    
    'Locate the center based on the inputted text 
    Dim centerValue as Integer
    centerValue = Loword(width) / 2 - Len(statement) /2
    
    'Return it in the function instead, of displaying the inputted text
    Return centerValue
    
End Function


'Declaring all variables
Dim userName as String 
Dim startGame as String
Dim playAgain as String
Dim userScore as Integer
Dim continueQuestion as String
Dim answerQuestion_1 as String
Dim answerQuestion_2 as String
Dim answerQuestion_3 as String
Dim answerQuestion_4 as String
Dim answerQuestion_5 as String
Dim as Integer currentamount, totalamount, percentage

'Initilization of variables
userName = " "
startGame = " "
playAgain = "Y"
totalamount = 250
currentamount = 0
percentage = 0
continueQuestion = " "

'User friendly and visually appealing welcome page, that prepares the user for the game. 
Color 4
Print tab(30); "  _  _ ___   _     _____    _     _         ___ "                
Print tab(30); " | \| | _ ) /_\   |_   _| _(_)_ _(_)__ _   / __|__ _ _ __  ___  "  
Print tab(30); " | .` | _ \/ _ \    | || '_| \ V / / _` | | (_ / _` | '  \/ -_) " 
Print tab(30); " |_|\_|___/_/ \_\   |_||_| |_|\_/|_\__,_|  \___\__,_|_|_|_\___| "
                                                               
Print " "
Print " "
Print " "
Print " "

printMiddle ("Welcome to Deniz's NBA Trivia Game", 4)
printMiddle ("Get ready for some exciting questions about the NBA!", 7)
Print ""
printMiddle ("GOOD LUCK and HAVE FUN!", 7)
Sleep 3000

'Loading Game feature. A visually apealing feature for the user
Do 
Cls

currentamount += 1
percentage = (currentamount*100)\totalamount

'Displays loading percentage
Print ""
Print ""
Print ""
Color 4
Print tab(56); "LOADING GAME"
Color 2
Print tab(61); str(percentage)+"% :"
Print ""

For j as integer = 0 to 10
    
   if j <= (percentage\10) then
       Color 2
       print " ========= ";
   else
       Color 7
       print " --------- ";
   end if
   
Next
Print ""

sleep 1,1
loop until currentamount = totalamount

'Informs the user that the game has loaded.
Color 7
Print ""
print tab(38); "The game has loaded. Press any key to continue."
sleep
Cls

'Introduces user to the game, then asks the user to enter their name. 
Print ""
Print ""
Print ""
Print ""

Print tab(40); "Hello, user welcome to an NBA themed trivia game."
Print tab(43); "First, before we start, what is your name?"

Print " "
Print " "

'An example where locateMiddle is used (Input statements)
Color 1
Locate 12, locateMiddle("Name: ")
Input "Name: ", userName

Color 7
Cls

'Responds and greets the user by their name (user-centered approach).
Locate 5
Print tab(40); "Hello " + userName + ", let's get this game started!"
Print " "
Print " "
Print " "

'Cool visual picture to intrigue the user.
printMiddle ("You better SLAM DUNK this quiz!", 7)

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

'Explains the basic rules of the NBA trivia game to a user.
Locate 5
printMiddle ("To start off, you will be asked five questions about the NBA.", 5)

printMiddle ("You must answer either A, B, C or D to select an answer.", 7)
Sleep 7000
Cls


'Now that the program knows who the user is, the quiz may begin!

'Play again feature (while loop)
While Ucase(playAgain) = "Y"

'Variable is initilized here so that the user's score and answer to each question is reset every time the game restarts.
userScore = 0
answerQuestion_1 = " "
answerQuestion_2 = " "
answerQuestion_3 = " "
answerQuestion_4 = " "
answerQuestion_5 = " "

'Question 1:
    While Ucase(answerQuestion_1) <> "A" and Ucase(answerQuestion_1) <> "B" and Ucase(answerQuestion_1) <> "C" and Ucase(answerQuestion_1) <> "D"
        
        Print "What year was the National Basketball Association first established?"
        Print " "
        Print tab (5); "A. 1935"
        Print tab (5); "B. 1945"
        Print tab (5); "C. 1946"
        Print tab (5); "D. 1958"
        Print " "
        Input "Answer? (A,B,C or D): ", answerQuestion_1
        
        'Input is not case sensetive. The user's score is updated by one point regardles if a user enters "C" or "c"
        if Ucase(answerQuestion_1) = "C" then
            userScore = userScore + 1 
            Print " "
            Color 2
            Print "You are correct! The NBA got its start as the Basketball Association of America in 1946"
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press Enter to continue", continueQuestion
            Cls
            
        'Input is not case sensetive. If the user enters a wrong answer, the user's score is not updated by one point.
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
            
        'If the user enters an invalid answer, the question resets (implemented if the user accidently types the wrong characters).
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
    While Ucase(answerQuestion_2) <> "A" and Ucase(answerQuestion_2) <> "B" and Ucase(answerQuestion_2) <> "C" and Ucase(answerQuestion_2) <> "D"
           
            Print "What team was the most recent NBA champion?"
            Print " "
            Print tab (5); "A. The Chicago Bulls"
            Print tab (5); "B. The Toronto Raptors"
            Print tab (5); "C. The Cleveland Cavaliers"
            Print tab (5); "D. The Golden State Warriors"
            Print " "
            Input "Answer? (A,B,C or D): ", answerQuestion_2
      
        'Input is not case sensetive. The user's score is updated by one point regardles if a user enters "C" or "c"
        if Ucase(answerQuestion_2) = "D" then
            userScore = userScore + 1 
            Print " "
            Color 2
            Print "You are correct! The Golden State Warriors won the 2018 NBA Championship."
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press Enter to continue.", continueQuestion
            Cls
        
        'Input is not case sensetive. If the user enters a wrong answer, the user's score is not updated by one point.
        elseif Ucase(answerQuestion_2) = "A" or Ucase(answerQuestion_2) = "B" or Ucase(answerQuestion_2) = "C" then 
            Color 4
            userScore = userScore + 0
            Print " "
            Print "Im sorry, but the correct answer is D. (Golden State Warriors)."
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press ENTER to continue.", continueQuestion
            Cls

        'If the user enters an invalid answer, the question resets (implemented if the user accidently types the wrong characters).
        else
            Cls
            Print " "
            Print " "
            printMiddle ("INVALID response, try again! Remeber use A, B, C or D to respond", 4)
            Sleep 2000
            Cls
        end if 
    Wend


'Question 3:
    While Ucase(answerQuestion_3) <> "A" and Ucase(answerQuestion_3) <> "B" and Ucase(answerQuestion_3) <> "C" and Ucase(answerQuestion_3) <> "D"
            
            Print "Who is the most recent NBA MVP?"
            Print " "
            Print tab (5); "A. Stephen Curry"
            Print tab (5); "B. James Harden"
            Print tab (5); "C. Lebron Johnson"
            Print tab (5); "D. Kyrie Westbrook"
            Print " "
            Input "Answer? (A,B,C or D): ", answerQuestion_3
        
        'Input is not case sensetive. The user's score is updated by one point regardles if a user enters "C" or "c"
        if Ucase(answerQuestion_3) = "B" then
            userScore = userScore + 1 
            Print " "
            Color 2
            Print "You are correct!  James Harden won the 2018 KIA MVP Award."
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press Enter to continue", continueQuestion
            Cls
            
        'Input is not case sensetive. If the user enters a wrong answer, the user's score is not updated by one point.            
        elseif Ucase(answerQuestion_3) = "A" or Ucase(answerQuestion_3) = "C" or Ucase(answerQuestion_3) = "D" then 
            Color 4
            userScore = userScore + 0
            Print " "
            Print "Im sorry, but the correct answer is B. (James Harden)."
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press ENTER to continue.", continueQuestion
            Cls
            
        'If the user enters an invalid answer, the question resets (implemented if the user accidently types the wrong characters).
        else
            Cls
            Print " "
            Print " "
            printMiddle ("INVALID response, try again! Remeber use A, B, C or D to respond.", 4)
            Sleep 2000
            Cls
        end if 
    Wend


'Question 4:
    While Ucase(answerQuestion_4) <> "A" and Ucase(answerQuestion_4) <> "B" and Ucase(answerQuestion_4) <> "C" and Ucase(answerQuestion_4) <> "D"
        
        Print "Which team has won the most NBA Championships?"
        Print " "
        Print tab (5); "A. The Los Angeles Lakers"
        Print tab (5); "B. The Vancouver Grizzles "
        Print tab (5); "C. The Golden State Warriors"
        Print tab (5); "D. The Boston Celtics"
        Print " "
        Input "Answer? (A,B,C or D): ", answerQuestion_4

        'Input is not case sensetive. The user's score is updated by one point regardles if a user enters "C" or "c"
        if Ucase(answerQuestion_4) = "D" then
            userScore = userScore + 1 
            Print " "
            Color 2
            Print "You are correct! The Boston Celtics currently have 17 championship, the most in NBA history!"
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press Enter to continue", continueQuestion
            Cls
            
        'Input is not case sensetive. If the user enters a wrong answer, the user's score is not updated by one point.
        elseif Ucase(answerQuestion_4) = "A" or Ucase(answerQuestion_4) = "B" or Ucase(answerQuestion_4) = "C" then 
            Color 4
            userScore = userScore + 0
            Print " "
            Print "Im sorry, but the correct answer is D. (The Boston Celtics)."
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press ENTER to continue.", continueQuestion
            Cls
        
        'If the user enters an invalid answer, the question resets (implemented if the user accidently types the wrong characters).
        else
            Cls
            Print " "
            Print " "
            printMiddle ("INVALID response, try again! Remeber use A, B, C or D to respond.", 4)
            Sleep 2000
            Cls
        end if 
    Wend 


'Question 5:
    While Ucase(answerQuestion_5) <> "A" and Ucase(answerQuestion_5) <> "B" and Ucase(answerQuestion_5) <> "C" and Ucase(answerQuestion_5) <> "D"
        
            Print "What player holds the record for the most points in an NBA game?"
            Print " "
            Print tab (5); "A. Kobe Bryant"
            Print tab (5); "B. Lebron James"
            Print tab (5); "C. Wilt Chamberlain"
            Print tab (5); "D. Michael Jordan"
            Print " "
            Input "Answer? (A,B,C or D): ", answerQuestion_5
            
        'Input is not case sensetive. The user's score is updated by one point regardles if a user enters "C" or "c"
        if Ucase(answerQuestion_5) = "C" then
            userScore = userScore + 1 
            Print " "
            Color 2
            Print "You are correct! Wilt Chamberlain currently holds the record for most points in a game (100 Pts)!"
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press ENTER to continue.", continueQuestion
            Cls
            
        'Input is not case sensetive. If the user enters a wrong answer, the user's score is not updated by one point.
        elseif Ucase(answerQuestion_5) = "A" or Ucase(answerQuestion_5) = "B" or Ucase(answerQuestion_5) = "D" then 
            Color 4
            userScore = userScore + 0
            Print " "
            Print "Im sorry, but the correct answer is C. (Wilt Chamberlain)."
            Color 7
            Print "SCORE: "; userScore
            Print " "
            Input "Press ENTER to continue.", continueQuestion
            Cls
        
        'If the user enters an invalid answer, the question resets (implemented if the user accidently types the wrong characters).
        else
            Cls
            Print " "
            Print " "
            printMiddle ("INVALID response, try again! Remeber use A, B, C or D to respond.", 4)
            Sleep 2000
            Cls
        end if 
        
    Wend 
    
    'Congratulates the user for completing the trivia game.
    Color 2
    printMiddle ("Congratulations! You have sucessfully completed the quiz!", 2)
    Color 7
    Print " "
    
    'Determines the user's score and then displays it as a number out of 5.
    if userScore = 5 then
        Print " "
        printMiddle ("You scored perfect! You're an expert on the NBA!", 7)
        Print " "
    end if
    
    if userScore = 4 then
        Print " "
        printMiddle ("Congrats, you got 4 out of 5! It looks like you know your stuff about the NBA.", 7)
        Print " "
    
    elseif userScore = 3 then
        Print " "
        printMiddle ("You got 3 out of 5, better luck next time!", 7)
        Print " "
    
    elseif userScore = 2 then
        Print " "
        printMiddle ("You only got 2 out of 5, better luck next time!", 7)
        Print " "
 
    elseif userScore = 1 then
        Print " "
        printMiddle ("You only got 1 out of 5 correct, yikes!", 7)
        Print " "
    
    elseif userScore = 0 then
        Print " "
        printMiddle ("You 0 out of 5, yikes!", 7)
        Print " "

    end if
    
    'A message promptes the user if they want to play again (While Loop)
    Locate 16, locateMiddle("Would you like to play again? ")
    Input "Would you like to play again (y/n)", playAgain
    cls
    
Wend 