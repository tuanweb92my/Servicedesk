@echo off 
    setlocal enableextensions disabledelayedexpansion

    set "search=notassigned"
    set "replace=%username%"

    set "textFile=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Incident_Report.csv"

    for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        >>"%textFile%" echo(!line:%search%=%replace%!
        endlocal
    )

Endlocal
