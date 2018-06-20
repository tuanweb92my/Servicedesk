
    set "search=notassigned"
    set "replace=%username%"

    set "Input=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv"
    set "Output=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report_output.csv"

\\vnhocapfs101\Others\RemoteAssistantJREPL.BAT  "notassigned" "%username%" /inc %2 /f %Input% /o %Output%