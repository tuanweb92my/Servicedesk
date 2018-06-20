

del %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt


echo Thank you for reaching us. >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt
echo Please describe your issue or attach an error screenshot and send to the IT team for assistant.   >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt
echo ---------------------------------------------------------------------------------------------- >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt

set count = 0
:loop
set /a count = %count% + 1
echo[ >> %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt
if %count% neq 7 goto loop

echo ///  PLEASE DO NOT CHANGE ANYTHING BELOW  ///  >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt

echo ////////////////////////////////////////////////////////// >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt

echo --------------------------------------------------- >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt

echo Computername : %computername% >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt

echo --------------------------------------------------- >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt

echo Username : %username% >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt

echo --------------------------------------------------- >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt


ipconfig | findstr /r /c:"IPv4 Address" >> %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt

echo --------------------------------------------------- >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt



systeminfo >> %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%_systeminfo.txt



SetLocal EnableDelayedExpansion
set content=
for /F "delims=" %%i in (%date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt) do set content=!content! %%~i%%0D%%0A

echo %content%



SET var=%cd%

cd "C:\Program Files (x86)\Microsoft Office\root\Office16>"



outlook.exe /c ipm.note /m "DG-vietnam-hoc-IT@webmail.adsint.biz&subject= Request a remote access for fixing my computer issue with [ Computername : %computername% - ap\%username% ] &body= %content% " /a %var%\%date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%_systeminfo.txt

cd "C:\Users\nguyeant\Downloads\RemoteAssistant"

EndLocal

