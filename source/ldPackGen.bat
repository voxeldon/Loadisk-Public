rem Generates an addon directory compatible with loadisk.
@echo off
set root_folder=here
set /p root_folder="Enter the root folder location [here]: "
set min_engine_version=1, 19, 50
set /p min_engine_version="Enter the minimum engine version [1, 19, 50]: "
set packID=mypack
set /p packID="Enter your pack identifier [mypack]: "
rem set /p uuid00="Enter first uuid: "
rem set /p uuid01="Enter second uuid: "
rem set /p dataUUID="Enter data pack uuid: "
rem set /p resUUID="Enter resource pack uuid: "
rem set /p scriptUUID="Enter script uuid: "

if "%root_folder%" == "" (
  set root_folder=here
)

if "%root_folder%" == "here" (
  set root_folder=%CD%
)

if "%min_engine_version%" == "" (
  set min_engine_version=1, 19, 50
)

if "%packID%" == "" (
  set packID=mypack
)

setlocal enabledelayedexpansion
set guid=[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}
for /L %%a in (1,1,1) do (
    for /f "usebackq" %%b in (`powershell -Command "(New-Guid).ToString()"`) do (
        set uuid00=%%b
    )
)

set guid=[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}
for /L %%a in (1,1,1) do (
    for /f "usebackq" %%b in (`powershell -Command "(New-Guid).ToString()"`) do (
        set uuid01=%%b
    )
)

set guid=[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}
for /L %%a in (1,1,1) do (
    for /f "usebackq" %%b in (`powershell -Command "(New-Guid).ToString()"`) do (
        set dataUUID=%%b
    )
)

set guid=[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}
for /L %%a in (1,1,1) do (
    for /f "usebackq" %%b in (`powershell -Command "(New-Guid).ToString()"`) do (
        set resUUID=%%b
    )
)

set guid=[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}
for /L %%a in (1,1,1) do (
    for /f "usebackq" %%b in (`powershell -Command "(New-Guid).ToString()"`) do (
        set scriptUUID=%%b
    )
)
rem RP Dir -----------------------------------------------------------------------------------------------
md "%root_folder%\%packID%"
md "%root_folder%\%packID%\BP"
md "%root_folder%\%packID%\BP\animation_controllers"
md "%root_folder%\%packID%\BP\animations"
md "%root_folder%\%packID%\BP\entities"
md "%root_folder%\%packID%\BP\functions"
md "%root_folder%\%packID%\BP\functions\%packID%"
md "%root_folder%\%packID%\BP\scripts"
md "%root_folder%\%packID%\BP\scripts\%packID%"
md "%root_folder%\%packID%\BP\texts"
md "%root_folder%\%packID%\RP"
md "%root_folder%\%packID%\RP\animation_controllers"
md "%root_folder%\%packID%\RP\animations"
md "%root_folder%\%packID%\RP\entity"
md "%root_folder%\%packID%\RP\models"
md "%root_folder%\%packID%\RP\models\entity"
md "%root_folder%\%packID%\RP\render_controllers"
md "%root_folder%\%packID%\RP\sounds"
md "%root_folder%\%packID%\RP\texts"
md "%root_folder%\%packID%\RP\textures"

rem Functions.js ------------------------------------------------------------------------------------------
echo ##---------------------------------------------------------------------------- >> "%root_folder%\%packID%\BP\functions\%packID%\_index.mcfunction"
echo ## INDEX >> "%root_folder%\%packID%\BP\functions\%packID%\_index.mcfunction"
echo ##---------------------------------------------------------------------------- >> "%root_folder%\%packID%\BP\functions\%packID%\_index.mcfunction"
echo function %packID%/_main >> "%root_folder%\%packID%\BP\functions\%packID%\_index.mcfunction"

echo ##---------------------------------------------------------------------------- >> "%root_folder%\%packID%\BP\functions\%packID%\_main.mcfunction"
echo ## MAIN: Core game loop. >> "%root_folder%\%packID%\BP\functions\%packID%\_main.mcfunction" 
echo ##---------------------------------------------------------------------------- >> "%root_folder%\%packID%\BP\functions\%packID%\_main.mcfunction"

echo ##---------------------------------------------------------------------------- >> "%root_folder%\%packID%\BP\functions\%packID%\init.mcfunction"
echo ## INIT : Internalize game data. >> "%root_folder%\%packID%\BP\functions\%packID%\init.mcfunction" 
echo ##---------------------------------------------------------------------------- >> "%root_folder%\%packID%\BP\functions\%packID%\init.mcfunction"

echo ##---------------------------------------------------------------------------- >> "%root_folder%\%packID%\BP\functions\%packID%\v.localize.mcfunction"
echo ## V.LOCALIZE : assign variables to entity. >> "%root_folder%\%packID%\BP\functions\%packID%\v.localize.mcfunction" 
echo ##---------------------------------------------------------------------------- >> "%root_folder%\%packID%\BP\functions\%packID%\v.localize.mcfunction"

rem Main.js ------------------------------------------------------------------------------------------
echo import { system,world } from "@minecraft/server"; >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js" 
echo export const ver = "0.4.0";  >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo export const initTime = 105;  >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo export const ram = "@e [type=loadisk:ram]"; >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo export const v = world.getDimension("overworld"); >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo let curTick = 0; >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo function init() { >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo     try { >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo         v.runCommandAsync('function %packID%/init'); >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo         v.runCommandAsync(`execute as ${ram} run function %packID%/v.localize`); >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo     } catch (e) { } >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo } >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo function tick() { >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo     try {if (curTick === initTime) {init();}curTick++;} >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js" 
echo     catch (e) {console.warn("Tick error: " + e);} >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo     v.runCommandAsync("function %packID%/_main"); >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo     system.run(tick); >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo } >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
echo system.run(tick); >> "%root_folder%\%packID%\BP\scripts\%packID%\_main.js"
rem BP Manifest ----------------------------------------------------------------------------------------
echo { > "%root_folder%\%packID%\BP\manifest.json"
echo   "format_version": 2, >> "%root_folder%\%packID%\BP\manifest.json"
echo   "header": { >> "%root_folder%\%packID%\BP\manifest.json"
echo     "description": "pack.description", >> "%root_folder%\%packID%\BP\manifest.json"
echo     "name": "pack.name", >> "%root_folder%\%packID%\BP\manifest.json"
echo     "uuid": "%uuid00%", >> "%root_folder%\%packID%\BP\manifest.json"
echo     "version": [0, 0, 1], >> "%root_folder%\%packID%\BP\manifest.json"
echo     "min_engine_version": [%min_engine_version%] >> "%root_folder%\%packID%\BP\manifest.json"
echo   }, >> "%root_folder%\%packID%\BP\manifest.json"
echo   "modules": [ >> "%root_folder%\%packID%\BP\manifest.json"
echo     { >> "%root_folder%\%packID%\BP\manifest.json"
echo       "type": "data", >> "%root_folder%\%packID%\BP\manifest.json"
echo       "uuid": "%dataUUID%", >> "%root_folder%\%packID%\BP\manifest.json"
echo       "version": [0, 0, 1] >> "%root_folder%\%packID%\BP\manifest.json"
echo     }, >> "%root_folder%\%packID%\BP\manifest.json"
echo     { >> "%root_folder%\%packID%\BP\manifest.json"
echo       "uuid": "%scriptUUID%", >> "%root_folder%\%packID%\BP\manifest.json"
echo       "version": [1, 0, 0], >> "%root_folder%\%packID%\BP\manifest.json"
echo       "type": "script", >> "%root_folder%\%packID%\BP\manifest.json"
echo       "language": "javascript", >> "%root_folder%\%packID%\BP\manifest.json"
echo       "entry": "scripts/%packID%/_main.js" >> "%root_folder%\%packID%\BP\manifest.json"
echo     } >> "%root_folder%\%packID%\BP\manifest.json"
echo   ], >> "%root_folder%\%packID%\BP\manifest.json"
echo   "dependencies": [ >> "%root_folder%\%packID%\BP\manifest.json"
echo     { >> "%root_folder%\%packID%\BP\manifest.json"
echo       "uuid": "%uuid01%", >> "%root_folder%\%packID%\BP\manifest.json"
echo       "version": [0, 0, 1] >> "%root_folder%\%packID%\BP\manifest.json"
echo     }, >> "%root_folder%\%packID%\BP\manifest.json"
echo     { >> "%root_folder%\%packID%\BP\manifest.json"
echo       "module_name": "@minecraft/server", >> "%root_folder%\%packID%\BP\manifest.json"
echo       "version": "1.0.0" >> "%root_folder%\%packID%\BP\manifest.json"
echo     } >> "%root_folder%\%packID%\BP\manifest.json"
echo   ] >> "%root_folder%\%packID%\BP\manifest.json"
echo } >> "%root_folder%\%packID%\BP\manifest.json"
rem RP Manifest ------------------------------------------------------------------------------------------
echo { > "%root_folder%\%packID%\RP\manifest.json"
echo "format_version": 2, >> "%root_folder%\%packID%\RP\manifest.json"
echo "header": { >> "%root_folder%\%packID%\RP\manifest.json"
echo "description": "pack.description", >> "%root_folder%\%packID%\RP\manifest.json"
echo "name": "pack.name", >> "%root_folder%\%packID%\RP\manifest.json"
echo "uuid": "%uuid01%", >> "%root_folder%\%packID%\RP\manifest.json"
echo "version": [0, 0, 1], >> "%root_folder%\%packID%\RP\manifest.json"
echo "min_engine_version": [%min_engine_version%] >> "%root_folder%\%packID%\RP\manifest.json"
echo }, >> "%root_folder%\%packID%\RP\manifest.json"
echo "modules": [ >> "%root_folder%\%packID%\RP\manifest.json"
echo { >> "%root_folder%\%packID%\RP\manifest.json"
echo "type": "resources", >> "%root_folder%\%packID%\RP\manifest.json"
echo "uuid": "%resUUID%", >> "%root_folder%\%packID%\RP\manifest.json"
echo "version": [0, 0, 1] >> "%root_folder%\%packID%\RP\manifest.json"
echo } >> "%root_folder%\%packID%\RP\manifest.json"
echo ], >> "%root_folder%\%packID%\RP\manifest.json"
echo "dependencies": [ >> "%root_folder%\%packID%\RP\manifest.json"
echo { >> "%root_folder%\%packID%\RP\manifest.json"
echo "uuid": "%uuid00%", >> "%root_folder%\%packID%\RP\manifest.json"
echo "version": [0, 0, 1] >> "%root_folder%\%packID%\RP\manifest.json"
echo } >> "%root_folder%\%packID%\RP\manifest.json"
echo ] >> "%root_folder%\%packID%\RP\manifest.json"
echo } >> "%root_folder%\%packID%\RP\manifest.json"
rem Lang ------------------------------------------------------------------------------------------
echo pack.name=%packID% >> "%root_folder%\%packID%\BP\texts\en_US.lang"
echo pack.description=%packID% >> "%root_folder%\%packID%\BP\texts\en_US.lang"
echo pack.name=%packID% >> "%root_folder%\%packID%\RP\texts\en_US.lang"
echo pack.description=%packID% >> "%root_folder%\%packID%\RP\texts\en_US.lang"
echo [ >> "%root_folder%\%packID%\BP\texts\languages.json"
echo   "en_US" >> "%root_folder%\%packID%\BP\texts\languages.json"
echo ] >> "%root_folder%\%packID%\BP\texts\languages.json"
echo [ >> "%root_folder%\%packID%\RP\texts\languages.json"
echo   "en_US" >> "%root_folder%\%packID%\RP\texts\languages.json"
echo ] >> "%root_folder%\%packID%\RP\texts\languages.json"

echo %packID% template created successfully.
pause