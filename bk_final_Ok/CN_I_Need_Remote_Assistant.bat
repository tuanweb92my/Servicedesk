

del %computername%.txt


echo Thank you for reaching us. >>  %computername%.txt
echo Please describe your issue or attach an error screenshot and send to the IT team for assistant.   >>  %computername%.txt
echo ---------------------------------------------------------------------------------------------- >>  %computername%.txt

set count = 0
:loop
set /a count = %count% + 1
echo[ >> %computername%.txt
if %count% neq 7 goto loop

echo ///  PLEASE DO NOT CHANGE ANYTHING BELOW  ///  >>  %computername%.txt

echo ////////////////////////////////////////////////////////// >>  %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt

echo --------------------------------------------------- >>  %computername%.txt

echo Computername : %computername% >>  %computername%.txt

echo --------------------------------------------------- >>  %computername%.txt

echo Username : %username% >>  %computername%.txt

echo --------------------------------------------------- >>  %computername%.txt


ipconfig | findstr /r /c:"IPv4 Address" >> %computername%.txt

echo --------------------------------------------------- >>  %computername%.txt

echo \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%.bat >> %date:~4,2%-%date:~7,2%-%date:~10,4%_%computername%.txt

rem echo <a href="file://///vnhocapfs101/OTHERS/RemoteAssistant/RemoteAccess_to_%computername%.bat"> </a> >> %computername%.txt

rem echo href="file://///vnhocapfs101/OTHERS/RemoteAssistant/RemoteAccess_to_%computername%.bat" >> %computername%.txt


echo "\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" %computername% > \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%.bat



systeminfo >> %computername%_systeminfo.txt



SetLocal EnableDelayedExpansion
set content=
for /F "delims=" %%i in (%computername%.txt) do set content=!content! %%~i%%0D%%0A

echo %content%



SET var=%cd%

cd "C:\Program Files (x86)\Microsoft Office\root\Office16>"



outlook.exe /c ipm.note /m "und_ap_CNGUA_CNLOIT@webmail.adsint.biz&subject= Request a remote access for fixing my computer issue with [ Computername : %computername% - ap\%username% ] &body= %content% " /a %var%\%computername%_systeminfo.txt

cd "C:\Users\nguyeant\Downloads\RemoteAssistant"

EndLocal

