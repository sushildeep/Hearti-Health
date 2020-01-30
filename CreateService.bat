net start | find "HeartiHealthApp"
if ERRORLEVEL 1 sc stop HeartiHealthApp
sc delete "HeartiHealthApp"
cd "C:\Program Files (x86)\Jenkins\workspace\Hearti-Health-Services"
start WinSW.NET4.exe install
sc start "HeartiHealthApp"
pause
