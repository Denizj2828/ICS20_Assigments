Dim randomWord as String 
Dim random_Location as Integer
Dim random_Color as Integer
Dim random_Location2 as Integer 

randomize timer 

random_Location2 = int(Rnd*100+50)
random_Location = int(Rnd*10+1)
random_Color = int(Rnd*100+1)

Color random_Color
Locate random_Location, random_Location2
Print "Hello World!"
Sleep 