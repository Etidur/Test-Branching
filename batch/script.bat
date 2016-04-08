:::::::::::::::::::::::::::::::::::::::::
::
:: Author : Nils Laurent
:: Date : 08/04/2016
::
:::::::::::::::::::::::::::::::::::::::::

@echo off

:init
echo.
echo  - - - Initialization - - -

goto :start

:end
exit


:start

echo.
set /p myVar= Enter a short sentence : 

echo.
echo  All "z" will be replaced with "b"
echo  %myVar%
set myVar=%myVar:z=b%
echo  %myVar%

echo.
pause

echo.
echo  Look how linux friendly we could be :

echo  init = %~dp0babun-init.sh

set init=%~dp0babun-init.sh
set init=%init:C=c%
set init=%init:\=/%
set init=/%init::=%

echo  init = %init%

echo.
pause

goto :end
