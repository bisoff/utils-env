
' Create an HTTP object
myURL = "http://www.google.com"
Set objHTTP = CreateObject( "WinHttp.WinHttpRequest.5.1" )

' Download the specified URL
objHTTP.Open "GET", myURL, False
objHTTP.Send
intStatus = objHTTP.Status

If intStatus = 200 Then
  WScript.Echo " " & intStatus & " A OK " +myURL
Else
  WScript.Echo "OOPS" +myURL
End If