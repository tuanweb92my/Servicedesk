set computer1=%1

rem type \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Inc000%2%computer1%.csv >> \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv

"C:\Program Files (x86)\Microsoft Office\root\Office16\outlook.exe" /c ipm.note /m "DG-vietnam-hoc-IT@webmail.adsint.biz& subject= %username% is working on INC#000%2 on %computer1% &body= Hello all, I ( %username% ) is taking this request. Thanks " 

endlocal