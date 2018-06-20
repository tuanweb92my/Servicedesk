    set "search=in_progress"
    set "replace=done"

    set "Input=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv"
    set "Output=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report_output.csv"

\\vnhocapfs101\Others\RemoteAssistant\JREPL.BAT  "in_progress" "done" /inc %2+1 /f %Input% /o %Output%