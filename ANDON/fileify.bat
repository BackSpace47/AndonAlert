    
	@echo off
set "Folder=dir"
if not exist "%Folder%" (
    dir "%Folder%"
    goto EndBatch
)
for /L %%N in (1 1 65534) do (
    if not exist "%Folder%%%N" (
        dir "%Folder%%%N"
        goto EndBatch
    )
)
:EndBatch
set "Folder="
	
	
	
	
	
	REM @echo off
    REM setlocal enableextensions disabledelayedexpansion

    REM set "folderName=ANDON"

    REM 2>nul ( dir > "%folderName%"||cmd /q /c"for /l %%a in (1 1 40) dir > "%folderName%%%a"&&exit %%a")
    REM if errorlevel 1 set "folderName=%folderName%%errorlevel%"
	
	REM :exit
	REM echo Created %folderName%

	
	
	
