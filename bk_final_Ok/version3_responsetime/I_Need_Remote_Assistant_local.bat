cd c:\
setlocal EnableDelayedExpansion
set "cmd=findstr /R /N "^^" \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv | find /C ":""

for /f %%a in ('!cmd!') do set nolines=%%a


If not exist "%Userprofile%\Desktop\HelpDeskV2.lnk" ( copy "\\vnhocapfs101\OTHERS\RemoteAssistant\HelpDeskV2.lnk" "%Userprofile%\Desktop\" )

rem del c:\Helpdesk\Inc000%nolines%_%computername%.txt


echo Thank you for reaching us. >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt
echo Please describe your issue or attach an error screenshot and send to the IT team for assistant.   >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt
echo ---------------------------------------------------------------------------------------------- >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt

set count = 0
:loop
set /a count = %count% + 1
echo[ >> c:\Helpdesk\Inc000%nolines%_%computername%.txt
if %count% neq 7 goto loop

echo ///  PLEASE DO NOT CHANGE ANYTHING BELOW  ///  >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt

echo ////////////////////////////////////////////////////////// >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt

echo --------------------------------------------------- >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt

echo Computername : %computername% >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt

echo --------------------------------------------------- >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt

echo Username : %username% >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt

echo --------------------------------------------------- >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt


ipconfig | findstr /r /c:"IPv4 Address" >> c:\Helpdesk\Inc000%nolines%_%computername%.txt

echo --------------------------------------------------- >>  c:\Helpdesk\Inc000%nolines%_%computername%.txt

echo \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%.bat >> c:\Helpdesk\Inc000%nolines%_%computername%.txt


echo call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat %computername% %nolines% > \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat

echo call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat %computername% %nolines% >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat


echo call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat %computername% %nolines% >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat

echo pause >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat

echo "\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" %computername% >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat

echo call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat %computername% %username% %nolines% >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat


echo \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat %computername% %nolines% > \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%.bat

rem echo No#,Computername , Username , Date ,Time, Problem Details , IT assigned , Status,>  \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv

rem echo INC#000%nolines%,%computername% , %username% , %date:~4,2%-%date:~7,2%-%date:~10,4% ,%time%, , notassigned , new , NA , >  \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Inc000%nolines%_%computername%.csv

echo INC#000%nolines%,%computername% , %username% , %date:~4,2%-%date:~7,2%-%date:~10,4% ,%time%, , notassigned , new , NA , >>  \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv

rem systeminfo >> c:\Helpdesk\Inc000%nolines%_%computername%_systeminfo.txt


SetLocal EnableDelayedExpansion
set content=
for /F "delims=" %%i in (c:\Helpdesk\Inc000%nolines%_%computername%.txt) do set content=!content! %%~i%%0D%%0A

echo %content%



SET var=%cd%

rem cd "C:\Program Files (x86)\Microsoft Office\root\Office16>"

rem outlook.exe /c ipm.note /m "DG-vietnam-hoc-IT@webmail.adsint.biz&subject= Request a remote access for fixing my computer issue with [ Computername : %computername% - ap\%username% ] &body= %content% " /a %var%\%computername%_%date:~4,2%-%date:~7,2%-%date:~10,4%_systeminfo.txt

"C:\Program Files (x86)\Microsoft Office\root\Office16\outlook.exe" /c ipm.note /m "DG-vietnam-hoc-IT@webmail.adsint.biz&subject=[INC#000%nolines%] Request a remote access for fixing my computer issue with [ Computername : %computername% - ap\%username% ] &body= %content% "



rem copy %var%\c:\Helpdesk\Inc000%nolines%_%computername%_systeminfo.txt \\vnhocapfs101\Apps\RemoteAssistant\

rem del %var%\c:\Helpdesk\Inc000%nolines%_%computername%_systeminfo.txt

rem del %var%\c:\Helpdesk\Inc000%nolines%_%computername%.txt

EndLocal

