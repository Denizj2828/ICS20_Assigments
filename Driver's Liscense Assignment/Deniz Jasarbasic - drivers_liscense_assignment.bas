'ICS20 Period 2 - 2019/02/19 - Deniz Jasarbasic - Driver's License and average level Program
'This program determines whether the user can get a driver's license  
'It also determines the user's grade level based on the user's input information

' Declaring all variables:
Dim userFirstName as String 
Dim userLastName as String 
Dim userAge as Integer 
Dim userAverage as Single 

' Initilization
userFirstName = ""
userLastName = ""
userAge = 0
userAverage = 0

' asks user for their first name, last name, age and average in school last year
Input "What is your first name? ", userFirstName
Input "What is your last name? ", userLastName
Input "What is your age? ", userAge
Input "What was your average in school last year? ", userAverage

Print " "

' Determines whether user is old enought to have a drivers license based on their age
if userAge >=16 then
    Print "Hello "; userFirstName ;" "; userLastName ;", you are old enought to get a driver's license!"
    Print " "
else
    Print "Hello "; userFirstName ;" "; userLastName ;", you are not old enought to get a drivers license"
    Print " "
end if

' determines and displays (or prints) the user's grade level based on their average
if userAverage >= 80 then
    Print "Also, your average in school was a level 4!"
end if

if userAverage <80 and userAverage >=70 then
    Print "Also, your average in school was a level 3!"
end if

if userAverage <70 and userAverage >=60 then
    Print "Also, your average in school was a level 2, you can do better!"
end if

if userAverage <60 and userAverage >=50 then
    Print "Also, your average in school was a level 1, I believe you can do better!"
end if

if userAverage <50 and userAverage >=0 then
    Print "Also, your average in school was a level R, better luck next time"
end if
Sleep
