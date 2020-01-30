net start | find "HeartiHealthApp"
if ERRORLEVEL 1 sc stop HeartiHealthApp
sc delete "HeartiHealthApp"
start WinSW.NET4.exe install
sc start "HeartiHealthApp"
pause
