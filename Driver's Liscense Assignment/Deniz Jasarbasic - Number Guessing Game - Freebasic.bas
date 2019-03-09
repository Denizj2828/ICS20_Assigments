'ICS20 Period 2 - 2019/02/26 - Deniz Jasarbasic - Number Guessing Game
'This program lets the user guess between two numbers that the user selects
'The user will only have five attempts to guess the number. If the user guesses right
'then they win! If they cannot guess the number the computer wins.

' Declaring all variables:
Dim random_Number as Integer 
Dim user_Answer as Integer
Dim play_Again as String
Dim playAgain_Answer as String
Dim RangeNumber_1 as Integer 
Dim RangeNumber_2 as Integer
Dim Question_1 as String
Dim Guessing_Range as Integer
Dim Number_Guesses as Integer
Dim User_Guess as Integer
Dim Number_Attempts as Integer
Dim Correct_Guess as Integer

Randomize timer 

' Initilization
RangeNumber_1 = 0
RangeNumber_2 = 0
user_Answer = 0
play_Again = "y"
Number_Guesses = 0 
Guessing_Range = 0
Number_Attempts = 0
Correct_Guess = 0

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
While Number_Guesses > 0 And Correct_Guess = 0
    
    Input "First, what will your minimum number be? ", RangeNumber_1 
    
    Input "What will your maximum number be? ", RangeNumber_2
    
    random_Number = int(Rnd*((RangeNumber_2 + 1)-RangeNumber_1) + RangeNumber_1)
    
    Guessing_Range = (RangeNumber_2 + 1) - RangeNumber_1
    
    If Guessing_Range < 0 Then
        Guessing_Range = Guessing_Range * (-1)
    End If
    
    Print " "

    Print "Great! Your range is therefor,"; Guessing_Range; "."
    
    Print ""
    
    Color 4
    Print "Remeber, the number of guesses should be less than your range."   
    Color 7
    Input "Considering your range, how many guesses do you need"; Number_Guesses
    cls
    
    ' If the user input a higher number than the range, the user will be prompted to 
    're-enter the number of guesses.
    While Number_Guesses >= Guessing_Range
        Color 4 
        Print "Remeber, the number of guesses should be less than your range!"
        Print "Your range is currently:"; Guessing_Range
        Print ""
        Color 7
        Input "How many guesses would you like"; Number_Guesses
    Wend
    
    ' If the user input is lower than 1, they will be prompted to change it
    While Number_Guesses <= 0
        Color 7
        Print "The number of guesses you'd like must be at least one!"
        
        Print ""
        
        Color 7
        Input "How many guesses would you like"; Number_Guesses
    Wend
    
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
                Number_Guesses = Number_Guesses - 1
                Color 7
                Print "Guesses left:"; Number_Guesses;
                
            ElseIf user_Answer < random_Number then
                Color 4
                Print "You are wrong ... too low."
                Number_Guesses = Number_Guesses - 1
                Color 7
                Print "Guesses left:"; Number_Guesses; 
            End If
            Sleep 500
            
            Color 7
            Print " "
            Print "Try to guess a number between"; RangeNumber_1; " and"; RangeNumber_2
            Input "Answer? ", user_Answer
            Sleep 800
    
        Wend
        Print " "
    Sleep 700
    Color 7
    Input "Do you want to play again (y/n)", play_again
    Color 50 
    Print "You are correct!"
    If user_Answer <> random_Number and Number_Guesses = 1 then
            Print "Im sorry you ran out of guesses, the computer wins, GAME OVER!"
    End If
Wend
Wend
Sleep 700

      
        
