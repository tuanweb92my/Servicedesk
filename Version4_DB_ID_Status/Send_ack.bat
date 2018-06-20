set computer1=%1

if "%username%" == "nguyeant" ( set ITname = "Tuan Nguyen" )

type \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_%computer1%.csv >> \\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv

"C:\Program Files (x86)\Microsoft Office\root\Office16\outlook.exe" /c ipm.note /m "DG-vietnam-hoc-IT@webmail.adsint.biz& subject= %username% is working on the problem on %computer1% &body= Hello all, I ( %username% ) is taking this request. Thanks " 

endlocal