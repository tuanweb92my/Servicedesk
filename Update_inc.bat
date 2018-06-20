set computer1=%1

rem   ==================================

ECHO OFF
CLS

:MENU
ECHO OFF
CLS
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 OR 3 to update your ticket, or 4 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - If the incident is solved 
ECHO   --- Status : done in report and send email to user to confirm.
ECHO 2 - If still in-progress -------- Status : in-progress
ECHO 3 - If it was cancelled
ECHO 4 - EXIT
ECHO.
rem   ==================================
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO done
IF %M%==2 GOTO working
IF %M%==3 GOTO cancel
IF %M%==4 GOTO EOF
rem   ==================================

:done
ECHO Please describe the correct problem and input your action in this ticket :  
ECHO ........................................................................
set /p problem_id="Problem details: "
echo %problem_id%
set /p action_id="Your action: "
echo %action_id%

rem call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_complete.bat %problem_id% %action_id% %3
rem \\vnhocapfs101\OTHERS\RemoteAssistant\Update_action.bat %action_id% %3

    set "Input=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv"
    set "Output=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report_output.csv"

    call \\vnhocapfs101\Others\RemoteAssistant\JREPL.BAT  "pls_describe" "%problem_id%" /inc %3+1 /f %Input% /o %Output%

    set "Input1=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv"
    set "Output1=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report_output.csv"

    call \\vnhocapfs101\Others\RemoteAssistant\JREPL.BAT  "action_info" "%action_id%" /inc %3+1 /f %Output1% /o %Input1%



    call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_completed.bat %1 %2 %3

exit
:working
rem type \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Inc000%3_%computer1%.csv >> \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv

exit

:cancel
exit

:EOF
exit
































































































