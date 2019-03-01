'ICS20 Period 2 - 2019/02/26 - Deniz Jasarbasic - Number Guessing Game
'This program lets the user guess between two numbers that the user selects
'The user will only have five attempts to guess the number. If the user guesses right
'then they win! If they cannot guess the number the computer wins.

' Declaring all variables:
Dim random_Number as Integer 
Dim user_Answer as Integer
Dim play_Again as String
Dim count as Integer
Dim playAgain_Answer as String
Dim RangeNumber_1 as Integer 
Dim RangeNumber_2 as Integer
Dim Question_1 as String


Randomize timer 

' Initilization
RangeNumber_1 = 0
RangeNumber_2 = 0
user_Answer = 0
play_Again = "y"

'User interface that greets the user and introduces them to the guessing game
Print tab(45); "Welcome to My Guessing Game."
Print " "
Print "The objective of this game is to guess between two numbers that the user (you) selects. If you"
Print "are able guess the number within the amount of guesses allowed, you win! If you cannot guess" 
Print "the number, the computer wins."
Print " "
Print "However, before we can start we must determine the range of numbers:"
Print " "

'
While play_Again = "Y" or play_Again = "y"

    Input "First, what will your minimum number be? ", RangeNumber_1 
    
    Input "What will your maximum number be? ", RangeNumber_2
    
    random_Number = int(Rnd*((RangeNumber_2 + 1) - RangeNumber_1) + RangeNumber_1)
    
    ' Now that all the informations has been registered, the game may begin!    
    Print random_Number
    Print " "
    
    Print "Great, now let's Play!"
    Print " "
    
    Print "Try to guess a number that I'm thinking of between"; RangeNumber_1; " and"; RangeNumber_2
    Input "Answer?", user_Answer
    
        While random_Number <> user_Answer
            cls            
            If user_Answer > random_Number then
                Color 4
                Print "You are wrong ... too high."
                
            ElseIf user_Answer < random_Number then
                Color 4
                Print "You are wrong ... too low."
            End If
            Sleep 500
            
            Color 7
            Print " "
            Print "Try to guess a number between"; RangeNumber_1; " and"; RangeNumber_2
            Input "Answer? ", user_Answer
    
        Wend
        Print " "
        Color 50 
        Print "You are correct!"
    Sleep 700
    Color 7
    Input "Do you want to play again (y/n)", play_again
    cls
Wend
Sleep 700

      
        
