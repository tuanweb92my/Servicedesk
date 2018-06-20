
    rem set "search=not_start_yet"
    rem set "replace=time"

    set "Input=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv"
    set "Output=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report_output.csv"

rem \\vnhocapfs101\Others\RemoteAssistant\JREPL.BAT  "notassigned" "%username%" /inc %2+1 /f %Input% /o %Output%

rem \\vnhocapfs101\Others\RemoteAssistant\JREPL.BAT  "not_start_yet" "%time%" /inc %2+1 /f %Output% /o %Input%

\\vnhocapfs101\Others\RemoteAssistant\JREPL.BAT  "" "" /inc %2+1 /f %Input% /o %Output%

