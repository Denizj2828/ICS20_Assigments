Dim userAnswer as Integer

userAnswer = 0 

Input "What is 7 x 9 = ", userAnswer

While userAnswer <> 63
    cls
    Print "You are wrong! Try again"
    Sleep 500
    Input "What is 7 x 9 = ", userAnswer
Wend
Print "You are correct!"
Sleep