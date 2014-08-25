echo off
SETLOCAL enabledelayedexpansion
call setEnv.cmd

for %%i in (.\src\*.java) do set SOURCE=!SOURCE! %%i

xcopy src\* classes\ /Y /S

echo %JAVA_HOME%\bin\javac -target 1.5 -classpath %CLASSPATH% -d .\classes %SOURCE%
%JAVA_HOME%\bin\javac -target 1.5 -classpath "%CLASSPATH%" -d .\classes %SOURCE%

ENDLOCAL
