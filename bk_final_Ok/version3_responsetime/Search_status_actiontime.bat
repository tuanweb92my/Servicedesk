    set "searchtime=NAA"
    set "replacetime=currenttime"

    set "Input=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report_output.csv"
    set "Output=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv"

\\vnhocapfs101\Others\RemoteAssistant\JREPL.BAT  "NAA" "%%time%" /inc %2+1 /f %Input% /o %Output%