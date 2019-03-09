Dim userWord as string
Dim random_Number as Integer

randomize timer 

random_Number = int(Rnd*5+1)

userWord = "Hello"

Print Mid(userWord, random_Number, 1)
sleep 
