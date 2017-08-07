'Launching Internet Explorer and Opening Gmail Application
Set IE = CreateObject("InternetExplorer.Application")
IE.Visible = True
IE.Navigate "http://www.gmail.com"

'We will use the sync method to wait till Gmail opens
Browser("Title:=Gmail.*").Page("title:=Gmail.*").Sync

'Script to set username and password to login
Browser("Title:=Gmail.*").Page("title:=Gmail.*").WebEdit("name:=Email").Set "jyothsna1184@gmail.com"
Browser("Title:=Gmail.*").Page("title:=Gmail.*").WebEdit("name:=Passwd").Set "Saibersys11@"
Browser("Title:=Gmail.*").Page("title:=Gmail.*").WebButton("name:=Sign in").click
Browser("Title:=Gmail.*").Page("title:=Gmail.*").Sync
If Browser("Title:=Gmail.*").Page("title:=Gmail.*").Link("innertext:=Sign out", "html id:=:.*").Exist(1) Then

'Print a Pass message for the user if logged in
Print "User " &Username& " is successfully Logged in"
Else If not Browser("Title:=Gmail.*").Page("title:=Gmail.*").Link("innertext:=Sign out", "html id:=:.*").Exist(1) Then

'Print a Fail message for the user if not able to log in and terminate the action
Print "User " &Username& " is not able to Login in"
Print "The Test has been terminated"
ExitAction
End If
End If

