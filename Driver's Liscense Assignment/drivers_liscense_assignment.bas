'ICS20 Period 2 - 2019/02/19 - Deniz Jasarbasic 
'This program 
'Declaring all variables:
Dim userFirstName as String 
Dim userLastName as String 
Dim userAge as Integer 
Dim userAverage as Single 

' asks user for their first name, last name, age and average in school last year
Input "What is your first name? ", userFirstName
Input "What is your last name? ", userLastName
Input "What is your age? ", userAge
Input "What was your average in school last year? ", userAverage

' determines whether user is old enought to have a drivers license
if userAge >=16 then
    Print "Hello "; userFirstName ;" "; userLastName ;", you are old enought to get a drivers license!"
else
    Print "Hello "; userFirstName ;" "; userLastName ;", you are not old enought to get a drivers license!"
end if

' determines user grade level based on their average
if userAverage >= 80 Then
    Print "Also, your average in school is a level 4!"
End if

if userAverage <80 and userAverage >=70 Then
    Print "Also, your average in school is a level 3!"
End if

if userAverage <70 and userAverage >=60 Then
    Print "Also, your average in school is a level 2!"
End if

if userAverage <60 and userAverage >=50 Then
    Print "Also, your average in school is a level 1!"
End if

if userAverage <50 and userAverage >=0 Then
    Print "Also, your average in school is a level R"
End if
Sleep