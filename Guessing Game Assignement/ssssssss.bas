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
    
    Print "Try to guess the number that I'm thinking of between"; RangeNumber_1; " and"; RangeNumber_2
    Input "Answer?", user_Answer
    
        While Number_Guesses > 0 And Correct_Guess = 0
        Print "Number of guesses left:"; Number_Guesses
        Input "What number would you like to guess"; User_Answer
        Print ""
        
        If User_Guess > RangeNumber_2 Or user_Guess < RangeNumber_1 Then
            Color 4
            Print "Your guess must be higher than"; RangeNumber_1; " and lower than"; RangeNumber_2; "!"
            Print "No guesses will be subtracted..."
         Wend
         End If
            If User_Guess > Number_Guesses Then
                Color 6
                Print "Your guess is higher than the number."
                Number_Guesses = Number_Guesses - 1
            ElseIf userGuess < guessingNumber Then
                Color 6
                Print "Your guess is lower than the number."
                Number_Guesses = Number_Guesses - 1

            ElseIf user_Guess = Number_Guesses Then
                Correct_Guess = 1
            End If

        Color 15
        Print ""
    Wend
    
    If Correct_Guess = 1 Then
        Color 2
        Print "Congratulations, you guessed the number correctly!!"
        Print "You are correct!"
    Else
        Color 4
        Print "You've run out of the guesses"
        Print "The number was"; random_Number
    End If
    
    Color 15
    Print ""
    Input "This was fun, wasn't it? Please entre Yes to play again or No to stop playing"; continuePlaying

Wend

Print "Oh thats too bad. Thank you for playing though!!"
Sleep While Number_Guesses > 0 And Correct_Guess = 0
        Print "Number of guesses left:"; Number_Guesses
        Input "What number would you like to guess"; User_Answer
        Print ""
        
        If User_Guess > RangeNumber_2 Or userGuess < RangeNumber_1 Then
            Color 4
            Print "Your guess must be higher than"; RangeNumber_1; " and lower than"; RangeNumber_2; "!"
            Print "No guesses will be subtracted..."
         End If
            If User_Guess > Number_Guesses Then
                Color 6
                Print "Your guess is higher than the number."
                Number_Guesses = Number_Guesses - 1
            ElseIf userGuess < guessingNumber Then
                Color 6
                Print "Your guess is lower than the number."
                Number_Guesses = Number_Guesses - 1

            ElseIf user_Guess = Number_Guesses Then
                Correct_Guess = 1
            End If

        Color 15
        Print ""
    Wend
    
    If Correct_Guess = 1 Then
        Color 2
        Print "Congratulations, you guessed the number correctly!!"
        Print "You are correct!"
    Else
        Color 4
        Print "You've run out of the guesses"
        Print "The number was"; random_Number
    End If
    
    Color 15
    Print ""
    Input "This was fun, wasn't it? Please entre Yes to play again or No to stop playing"; continuePlaying

Wend

Print "Oh thats too bad. Thank you for playing though!!"
Sleep

      
        
