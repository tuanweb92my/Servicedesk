setlocal EnableDelayedExpansion
set "cmd=findstr /R /N "^^" \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv | find /C ":""

for /f %%a in ('!cmd!') do set nolines=%%a


If not exist "%Userprofile%\Desktop\HelpDeskV2.lnk" ( 
copy "\\vnhocapfs101\OTHERS\RemoteAssistant\HelpDesk.lnk" "%Userprofile%\Desktop\" 

if NOT EXIST c:\Helpdesk ( 

mkdir c:\Helpdesk

pushd \\vnhocapfs101\OTHERS\RemoteAssistant\

copy \\vnhocapfs101\OTHERS\RemoteAssistant\I_Need_Remote_Assistant_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\I_Need_Remote_Assistant_local_outside.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status_todone_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status_time_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Send_completed_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\HelpDeskV2_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\HelpDesk.ico c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\HelpDesk.lnk c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\JREPL.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Update_SDicon.bat c:\Helpdesk

popd

)

)

rem del Inc000%nolines%_%computername%.txt


echo Thank you for reaching us. >>  Inc000%nolines%_%computername%.txt
echo Please describe your issue or attach an error screenshot and send to the IT team for assistant.   >>  Inc000%nolines%_%computername%.txt
echo ---------------------------------------------------------------------------------------------- >>  Inc000%nolines%_%computername%.txt

set count = 0
:loop
set /a count = %count% + 1
echo[ >> Inc000%nolines%_%computername%.txt
if %count% neq 7 goto loop

echo ///  PLEASE DO NOT CHANGE ANYTHING BELOW  ///  >>  Inc000%nolines%_%computername%.txt

echo ////////////////////////////////////////////////////////// >>  Inc000%nolines%_%computername%.txt

echo --------------------------------------------------- >>  Inc000%nolines%_%computername%.txt

echo Computername : %computername% >>  Inc000%nolines%_%computername%.txt

echo --------------------------------------------------- >>  Inc000%nolines%_%computername%.txt

echo Username : %username% >>  Inc000%nolines%_%computername%.txt

echo --------------------------------------------------- >>  Inc000%nolines%_%computername%.txt


ipconfig | findstr /r /c:"IPv4 Address" >> Inc000%nolines%_%computername%.txt

echo --------------------------------------------------- >>  Inc000%nolines%_%computername%.txt

echo \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%.bat >> Inc000%nolines%_%computername%.txt

echo call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat %computername% %nolines% > \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat



echo call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat %computername% %nolines% >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat
echo call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat %computername% %nolines% >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat

echo call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat %computername% %nolines% >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat

echo call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat %computername% %nolines% >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat

echo pause >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat

echo "\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" %computername% >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat

echo call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat %computername% %username% %nolines% >> \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat


echo \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%a.bat %computername% %nolines% > \\vnhocapfs101\Apps\RemoteAssistant\RemoteAccess_to_%computername%_Inc000%nolines%.bat

rem echo No#,Computername , Username , Date ,Time, Problem Details , IT assigned , Status,>  \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv

rem echo INC#000%nolines%,%computername% , %username% , %date:~4,2%-%date:~7,2%-%date:~10,4% ,%time%, , notassigned , new , NA , >  \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Inc000%nolines%_%computername%.csv

echo INC#000%nolines%,%computername% , %username% , %date:~4,2%-%date:~7,2%-%date:~10,4% ,%time%, pls_describe , notassigned , new , not_start_yet , still_open , action_info , >>  \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv

echo INC#000%nolines%,%computername% , %username% , %date:~4,2%-%date:~7,2%-%date:~10,4% ,%time%, pls_describe , notassigned , new , not_start_yet , still_open , action_info , >>  \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report__%date:~4,2%-%date:~7,2%-%date:~10,4%.csv

rem systeminfo >> Inc000%nolines%_%computername%_systeminfo.txt


SetLocal EnableDelayedExpansion
set content=
for /F "delims=" %%i in (Inc000%nolines%_%computername%.txt) do set content=!content! %%~i%%0D%%0A

echo %content%



SET var=%cd%

rem cd "C:\Program Files (x86)\Microsoft Office\root\Office16>"

rem outlook.exe /c ipm.note /m "DG-vietnam-hoc-IT@webmail.adsint.biz&subject= Request a remote access for fixing my computer issue with [ Computername : %computername% - ap\%username% ] &body= %content% " /a %var%\%computername%_%date:~4,2%-%date:~7,2%-%date:~10,4%_systeminfo.txt

If exist "C:\Program Files (x86)\Microsoft Office\root\Office16\outlook.exe" (

"C:\Program Files (x86)\Microsoft Office\root\Office16\outlook.exe" /c ipm.note /m "DG-vietnam-hoc-IT@webmail.adsint.biz&subject=[INC#000%nolines%] Request a remote access for fixing my computer issue with [ Computername : %computername% - ap\%username% ] &body= %content% "
)

If exist "C:\Program Files\Microsoft Office\root\Office16\outlook.exe" (

"C:\Program Files\Microsoft Office\root\Office16\outlook.exe" /c ipm.note /m "DG-vietnam-hoc-IT@webmail.adsint.biz&subject=[INC#000%nolines%] Request a remote access for fixing my computer issue with [ Computername : %computername% - ap\%username% ] &body= %content% "

)


rem copy %var%\Inc000%nolines%_%computername%_systeminfo.txt \\vnhocapfs101\Apps\RemoteAssistant\

del %var%\Inc000%nolines%_%computername%_systeminfo.txt

del %var%\Inc000%nolines%_%computername%.txt

EndLocal

