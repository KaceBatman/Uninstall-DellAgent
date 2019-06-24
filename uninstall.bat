@echo OFF
@setlocal enableextensions
@title Installing KACE Agent
echo Uninstalling SupportAssist

net session >nul 2>&1
IF errorlevel 1 (
  echo.ERROR: Requires Admin privileges
  timeout /t 5 >nul 2>&1
  exit /b 1
)

set LogFile=%systemroot%\LOGS\UninstallSupportAssist.txt
echo uninstall SupportAssist > "%LogFile%"
echo Started: %date% %time% >> "%LogFile%"


: Dell SupportAssist Agent 
:3.0.2.48:
start /wait MsiExec.exe /X{5A18ABE3-52D1-4CA5-9169-25EC7E789582} /qn /norestart
:3.0.0.147
start /wait MsiExec.exe /X{56114D24-F838-4743-9B51-D4267E1A3C34} /qn /norestart
:3.0.1.62
start /wait MsiExec.exe /X{50EF2C72-95EC-4206-AAC3-9E84004A6140} /qn /norestart
:3.1.0.142
start /wait MsiExec.exe /X{E98E94E2-12D1-48E5-AC69-2C312F466136} /qn /norestart

:2.0.4.6
start /wait MsiExec.exe /X{3627F962-F0E0-4E76-BC90-45EBD712E2E6} /qn /norestart
:2.0.2.21
start /wait MsiExec.exe /X{E1AA62F7-B32A-4090-814E-83BC7C3DF1FB} /qn /norestart
:2.2.3.2
start /wait MsiExec.exe /X{4CB4741A-20C1-454E-8276-993D06A76D67} /qn /norestart
:2.2.1.23
start /wait MsiExec.exe /X{33E712C1-2183-421C-9BC8-C902DB9C596C} /qn /norestart
:2.1.4.14
start /wait MsiExec.exe /X{9DD6B149-CEBC-4910-B11A-242393EDF6D3} /qn /norestart
:2.2.0.244
start /wait MsiExec.exe /X{68BCF949-FA8C-48E5-9B32-C11B8255D240} /qn /norestart
:2.2.2.7
start /wait MsiExec.exe /X{9074E264-F615-4DDE-969E-1FDBCFEC3FB5} /qn /norestart
:2.1.3.5
start /wait MsiExec.exe /X{8D7B279C-A661-465C-9658-F62FBD6A6B91} /qn /norestart


:1.2.6745.47, :2.0.6875.668 , 1.1.6664.10, 2.0.6875.402 , 1.3.6855.61, 1.3.6855.72, 1.3.6855.212

"C:\Program Files\Dell\SupportAssist\uninstaller.exe" /arp /norestart /silent

echo Done.
echo. >> "%LogFile%"
echo Finished: %date% %time% >> "%LogFile%"
ENDLOCAL
exit /b 0
