set computer1=%1
rem @echo off 
    setlocal enableextensions disabledelayedexpansion

    set "search=new"
    set "replace=in_progress"

    set "textFile=\\vnhocapfs101\Apps\RemoteAssistant\VNLO_Inc000%2_%computer1%.csv"

    for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        >>"%textFile%" echo(!line:%search%=%replace%!
        endlocal
    )

Endlocal
