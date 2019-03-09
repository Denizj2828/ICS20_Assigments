Dim userAnswer as Integer
Dim number_1 as Integer 
Dim number_2 as Integer 

Randomize timer 

number_1 = int(Rnd*10 + 1)
number_2 = int(Rnd*10 + 1)

Print "What is"; number_1 ;" +"; number_2 ;"="
Input "Answer?", userAnswer

While userAnswer <> number_1 + number_2 
    cls
    Print "You are wrong! Try again"
    Sleep 500
    Print "What is"; number_1; " +"; number_2; "="
    Input "Answer?", userAnswer
    
Wend
Print "You are correct!"
Sleep
