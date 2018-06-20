

    set "Input=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv"
    set "Output=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report_output.csv"

\\vnhocapfs101\Others\RemoteAssistant\JREPL.BAT  "pls_describe" %1 /inc %2+1 /f %Input% /o %Output%