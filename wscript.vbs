Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell.exe -Command ""Start-Process notepad.exe -WindowStyle Hidden -Verb RunAs; Start-Sleep -Seconds 5; Stop-Process -Name notepad -Force""", 0, False
