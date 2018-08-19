@echo on
set filename=%~n1
echo %filename%
set filename=%filename: =_%
set filename=%filename:,=_%
set filename=%filename:.=_%
set filename=%filename:'=_%
set filename=%filename:"=_%
set filename=%filename::=_%
set filename=%filename:-=_%
set filename=%filename:__=_%
set filename=%filename:__=_%
echo %filename%
set filenameExt=%filename%%~x1%
ren "%~nx1" "%filenameExt%"
convert %filenameExt% %filename%.png
del %filenameExt%
pause