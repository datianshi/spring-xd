@if "%DEBUG%" == "" @echo off
SETLOCAL

set GRADLE_OPTS="-XX:MaxPermSize=256m %GRADLE_OPTS%"

if not "%XD_HOME%" == "" (
	set XD_HOME=..
)
if not "%XD_TRANSPORT%" == "" (
	set XD_TRANSPORT=local
)
if not "%XD_ANALYTICS%" == "" (
	set XD_ANALYTICS=memory
)
if not "%XD_STORE%" == "" (
	set XD_STORE=memory
)
call gradle\build_xd.bat  %*


