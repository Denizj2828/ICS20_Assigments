Randomize  Timer

Dim guessingNumber as Integer
Dim userGuess as Integer
Dim numberOfGuesses as Integer
Dim maxNumber as Integer
Dim minNumber as Integer
Dim continuePlaying as String
Dim correctGuess as Integer
Dim guessCount as Integer
Dim userHasGuessedZero as Integer
Dim numberOfTries as Integer
Dim guessingRange as Integer

guessingNumber = 0
userGuess = 0
numberOfGuesses = 0
maxNumber = 0
minNumber = 0
continuePlaying = ""
correctGuess = 0
guessCount = 0
userHasGuessedZero = 0
numberOfTries = 0
guessingRange = 0


Print "Hi, let's get started! First, before you can start guessing, you must choose a miximum and minimum number to guess from."


While continuePlaying <> "No" and continuePlaying <> "no"
   Input "What about the minimum number"; minNumber
    
    Input "What is the maximum number of your choice"; maxNumber
    
    While minNumber >= maxNumber
        Color 4
        Print "Your minimum number must be lower than your maximum number!"
        Print "Your current maximum number is: "; maxNumber; "."
        
        Print ""
        
        Color 15
        Input "What would you like your minimum number to be"; minNumber
    Wend
    
    guessingRange = maxNumber - minNumber
    
    If guessingRange < 0 Then
        guessingRange = guessingRange * (-1)
    End If
    
    guessingRange = guessingRange + 1
    
    Print ""
    Print "Great! Your range to guess from is"; guessingRange; "."
    
    Print ""
    Print "Now we've got to see how many guesses you'd like to take!"
    Print "Remember, the number of guesses must be less than your range!"
    
    Input "How many guesses would you like"; numberOfGuesses
    
    While numberOfGuesses >= guessingRange
        Color 4
        Print "The number of guesses you'd like must be less than your number range!"
        Print "Your number range is:"; guessingRange
        
        Print ""
        
        Color 15
        Input "How many guesses would you like"; numberOfGuesses
    Wend
    
    While numberOfGuesses <= 0
        Color 4
        Print "The number of guesses you'd like must be at least one!"
        
        Print ""
        
        Color 15
        Input "How many guesses would you like"; numberOfGuesses
    Wend
    
    Dim guessedNumber(numberOfGuesses) As Integer
    
    Print ""
    
    Print "Great, now let's start guessing!"
    Print "Remember"

    Print "Your max number is:"; maxNumber

    Print "Your minimum number is:"; minNumber
 
    Print "The range is:"; guessingRange

    Print "The number of guesses you can take is:"; numberOfGuesses
    
    Print ""
    
    guessingNumber = Int(Rnd*(maxNumber - minNumber +1) + minNumber)
    
    numberOfTries = numberOfGuesses
    
    While numberOfGuesses > 0 And correctGuess = 0
        Print "Number of guesses left:"; numberOfGuesses
        Input "What number would you like to guess"; userGuess
        Print ""
        
        If userGuess > maxNumber Or userGuess < minNumber Then
            Color 4
            Print "Your guess must be higher than"; minNumber; " and lower than"; maxNumber; "!"
            Print "No guesses will be subtracted..."
        Else
            If userHasGuessedZero = 0 And userGuess = 0 Then
                userHasGuessedZero = 1
         End If
            If userGuess > guessingNumber Then
                Color 6
                Print "Your guess is higher than the number."
                numberOfGuesses = numberOfGuesses - 1
            ElseIf userGuess < guessingNumber Then
                Color 6
                Print "Your guess is lower than the number."
                numberOfGuesses = numberOfGuesses - 1

            ElseIf userGuess = guessingNumber Then
                correctGuess = 1
            End If

            guessCount = guessCount + 1
        End If
        Color 15
        Print ""
    Wend
    
    If correctGuess = 1 Then
        Color 2
        Print "Congratulations, you guessed the number correctly!!"
        Print "It took you"; (numberOfTries - numberOfGuesses + 1); " guesses to guess the number"
    Else
        Color 4
        Print "You've run out of the"; numberOfTries; " guesses you had to guess the number :("
        Print "The number was"; guessingNumber
    End If
    
    Color 15
    Print ""
    Input "This was fun, wasn't it? Please entre Yes to play again or No to stop playing"; continuePlaying

Wend

Print "Oh thats too bad. Thank you for playing though!!"
Sleep