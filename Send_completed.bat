set computer1=%1

call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status_todone.bat %1 %3
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status_time.bat %1 %3

rem type \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Inc000%3_%computer1%.csv >> \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv

"C:\Program Files (x86)\Microsoft Office\root\Office16\outlook.exe" /c ipm.note /m "%2 & subject= [INC#000%3] is completed  & body= Hello user, the problem is solved.Thanks & best regards " 



endlocal