
echo Thank you for reaching us. >>  c:\Helpdesk\%computername%.txt
echo Please describe your issue or attach an error screenshot and send to the IT team for assistant.   >>  c:\Helpdesk\%computername%.txt
echo ---------------------------------------------------------------------------------------------- >>  c:\Helpdesk\%computername%.txt

set count = 0
:loop
set /a count = %count% + 1
echo[ >> c:\Helpdesk\%computername%.txt
if %count% neq 7 goto loop

echo ///  PLEASE DO NOT CHANGE ANYTHING BELOW  ///  >>  c:\Helpdesk\%computername%.txt

echo ////////////////////////////////////////////////////////// >>  c:\Helpdesk\%computername%.txt

echo --------------------------------------------------- >>  c:\Helpdesk\%computername%.txt

echo Computername : %computername% >>  c:\Helpdesk\%computername%.txt

echo --------------------------------------------------- >>  c:\Helpdesk\%computername%.txt

echo Username : %username% >>  c:\Helpdesk\%computername%.txt

echo --------------------------------------------------- >>  c:\Helpdesk\%computername%.txt


ipconfig | findstr /r /c:"IPv4 Address" >> c:\Helpdesk\%computername%.txt

echo --------------------------------------------------- >>  c:\Helpdesk\%computername%.txt

rem echo \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%.bat >> c:\Helpdesk\%computername%.txt

SetLocal EnableDelayedExpansion
set content=
for /F "delims=" %%i in (c:\Helpdesk\%computername%.txt) do set content=!content! %%~i%%0D%%0A

echo %content%



SET var=%cd%

rem cd "C:\Program Files (x86)\Microsoft Office\root\Office16>"

rem outlook.exe /c ipm.note /m "DG-vietnam-hoc-IT@webmail.adsint.biz&subject= Request a remote access for fixing my computer issue with [ Computername : %computername% - ap\%username% ] &body= %content% " /a %var%\%computername%_%date:~4,2%-%date:~7,2%-%date:~10,4%_systeminfo.txt

"C:\Program Files (x86)\Microsoft Office\root\Office16\outlook.exe" /c ipm.note /m "DG-vietnam-hoc-IT@webmail.adsint.biz&subject=Request a remote access for fixing my computer issue with [ Computername : %computername% - ap\%username% ] &body= %content% "



rem copy %var%\c:\Helpdesk\%computername%_systeminfo.txt \\vnhocapfs101\Apps\RemoteAssistant\

rem del %var%\c:\Helpdesk\%computername%_systeminfo.txt

rem del %var%\c:\Helpdesk\%computername%.txt

EndLocal

