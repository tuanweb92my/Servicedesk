
set "search=new"
    set "replace=in-progress"

    set "Input=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report_Output.csv"
    set "Output=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv"

\\vnhocapfs101\Others\RemoteAssistant\JREPL.BAT  "new" "in_progress" /inc %2+1 /f %Input% /o %Output%