set computer1=%1

rem @echo off 
    setlocal enableextensions disabledelayedexpansion
    
    set "searchtime=NA"
    rem set "replacetime=done"

    set "textFile=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Inc000%2_%computer1%.csv"

    for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        >>"%textFile%" echo(!line:%searchtime%=%time%!
        endlocal
    )
    

Endlocal
