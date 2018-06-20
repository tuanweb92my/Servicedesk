

    set "Input=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv"
    set "Output=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report_output.csv"

\\vnhocapfs101\Others\RemoteAssistant\JREPL.BAT  "action_info" "%1" /inc %2+1 /f %Output% /o %Input%