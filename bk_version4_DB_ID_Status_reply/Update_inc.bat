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
\\vnhocapfs101\OTHERS\RemoteAssistant\Send_completed.bat %1 %2 %3

exit
:working
type \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_%computer1%.csv >> \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv

exit

:cancel
exit

:EOF
exit
































































































