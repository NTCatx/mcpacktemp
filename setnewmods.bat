@Echo OFF
echo setting root..
set masterfolder=%cd%
echo Copying to Client
xcopy /e /v /y "%cd%\newmods" "%cd%\client\mods"
echo Copying to Server
xcopy /e /v /y "%cd%\newmods" "%cd%\server\mods"
echo Deleting leftover mods
del "%cd%\newmods\*.*" /q
echo Starting refresh
start refresh.bat
exit