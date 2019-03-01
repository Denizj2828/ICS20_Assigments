'ICS20 Period 2 - 2019/02/26 - Deniz Jasarbasic - Number Guessing Game
'This program lets the user guess between two numbers that the user selects
'If the user guesses right then they win!

'Declaring all variables:
Dim random_Number as Integer 
Dim user_Answer as Integer
Dim play_Again as String
Dim RangeNumber_1 as Integer 
Dim RangeNumber_2 as Integer


Randomize timer 

'Initilization
RangeNumber_1 = 0
RangeNumber_2 = 0
user_Answer = 0
play_Again = "y"
random_Number = 0

'User interface that greets the user and introduces them to the guessing game
Print tab(45); "Welcome to My Guessing Game."
Print " "
Print "The objective of this game is to guess between two numbers that the user (you) selects."
Print " "
Print "However, before we can start we must determine the range of numbers:"
Print " "

'Play_Again loop that restarts the game if the user selects "y" or "Y"
While play_Again = "Y" or play_Again = "y"

    Input "First, what will your minimum number be? ", RangeNumber_1 
    
    Input "What will your maximum number be? ", RangeNumber_2
    
    'Determines a random number between the numbers the user selected
    random_Number = int(Rnd*((RangeNumber_2 + 1) - RangeNumber_1) + RangeNumber_1)
    
    'Now that all the informations has been registered, the game may begin!    
    Print random_Number
    Print " "
    
    Print "Great, now let's Play!"
    Print " "
    
    'Question loop that lets the user guess the number multiple times.
    Print "Try to guess a number that I'm thinking of between"; RangeNumber_1; " and"; RangeNumber_2
    Input "Answer?", user_Answer
    
        While random_Number <> user_Answer
            cls            
            If user_Answer > random_Number then
                Color 4
                Print "You are wrong ... too high."     'Gives the user an indication of being too hight  
                
            ElseIf user_Answer < random_Number then
                Color 4
                Print "You are wrong ... too low."       'Gives the user an indication of being too low
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
        Input "Do you want to play again (y/n)", play_again 'Play again loop, letting the user restart the game
    cls
Wend
Sleep 700

      
        
