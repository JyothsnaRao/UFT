On Error Resume Next

Const PAGE_LOADED = 4

Set objIE = CreateObject("InternetExplorer.Application")

Call objIE.Navigate("http://www.gmail.com")

objIE.Visible = True

Do Until objIE.ReadyState = PAGE_LOADED : Call WScript.Sleep(100) : Loop

objIE.Document.all.Email.Value = "joqa118@gmail.com"

objIE.Document.all.Passwd.Value = "Saibersys11@"

If Err.Number <> 0 Then

msgbox "Error: " & err.Description

End If

Call objIE.Document.all.gaia_loginform.submit

Set objIE = Nothing