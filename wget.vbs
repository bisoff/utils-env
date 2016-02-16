'cscript vget.vbs >FILE.TXT
'Run this vbscript at command line. Use above syntax to download/create FILE.TXT
Set oX = CreateObject("Microsoft.XmlHTTP")
oX.Open "GET", "http://www.exampleURL.com/FILE.TXT", False
oX.Send ""
WScript.Echo oX.responseText