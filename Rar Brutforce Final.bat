@echo off
color 0a
:: WinRaR Pin Cracker ;Author Prashant Mishra ;GitHub User :Prashant Mishra
:: Only For Pin Cracking That involves Digits/Numbers.
:: Works Fine With WinRaR Because It Uses WinRAR's UnRAR.exe
:: Can Work With Other Softwares But You Have To Modify Code
:: With Respect To Your Software.
:: Batch Will Try To Locate UnRAR.exe On Default Installation Locations
:: If Not Found It Will Prompt For UnRAR.exe Exact Location So Please Provide..
:: Time Required For Cracking Depends On Users Processsor's Speed..
title Rar Password Cracker
mode con: 1000
echo. Disclaimer: This Batch Code Is Issued Only For knowledge Purpose
echo.             Any Actions And Or Activities Related To This Batch Code
echo.             Is Solely Your Responsibility.
echo.             The Misuse Of This Code Can Result In Criminal Charges
echo.             Brought Against The Persons In Question. 
echo.             The Author Will Not Be Held Responsible In The Event Any Criminal Charges
echo.             Be Brought Against Any Individuals Misusing This Code To Break The Law.
echo.             If You Fully Understand And Except This Disclaimer Then Only Hit Enter
echo.             Or CLOSE NOW!
echo.
echo.
pause

IF EXIST "C:\Program Files\WinRAR\UnRAR.exe" goto COPY1
GOTO UNRARPATH

:UNRARPATH
cls
SET /P "UnRARPATH=Please Enter UnRAR.exe Full Path  : "
IF EXIST "%UnRARPATH%UnRAR.exe" goto COPY2
goto UNRARPATH

:COPY1
copy "C:\Alien Softwares\WinRAR\UnRAR.exe"
goto TEMPF

:COPY2
copy "%UnRARPATH%UnRAR.exe"
goto TEMPF

:TEMPF
SET PASSWORD=0
SET TMP=TempFold
MD %TMP%

:FILENAME
cls
echo ----------------------------------------------
echo             Password Cracker
echo                   by Prashant Mishra.
echo ----------------------------------------------
echo.
SET/P "NAME=Enter File Name  : "
IF "%NAME%"=="" goto NERROR
goto FILEPATH

:NERROR
echo ----------------------------------------------
echo                      ERROR
echo ----------------------------------------------
echo Sorry you can't leave it blank.
pause
goto FILENAME

:FILEPATH
SET/P "PATH=Enter Full Path : "
IF "%PATH%"=="" goto PERROR
goto NEXT

:PERROR
echo ----------------------------------------------
echo                      ERROR
echo ----------------------------------------------
echo Sorry you can't leave it blank.
pause
goto FILEPATH

:NEXT
IF EXIST "%PATH%%NAME%" goto GP
goto PATH

:PATH
cls
echo ----------------------------------------------
echo                     ERROR
echo ----------------------------------------------
echo Opppss File does not Exist..
pause
goto FILENAME

:GP
echo.
echo.------------------------------------------------
echo.           Starting Brut Force Atack
echo.             Generating Password....
echo.------------------------------------------------
echo.
echo.  Calculated Time For Attack 2 min. ...
echo................Please Be Patient................. 

:START
title Cracking Password...
SET /A PASSWORD=%PASSWORD%+1
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%
UNRAR E -INUL -P%PASSWORD% "%PATH%%NAME%" "%TMP%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START

:FINISH
DEL /Q/S %TMP%
DEL "UnRAR.exe" 
cls
title Finised Cracking
echo ----------------------------------------------
echo                     CRACKED
echo ----------------------------------------------
echo.
echo PASSWORD CRACKED!
echo File Name : %NAME%
echo Password  : %PASSWORD%
echo Prashant; Thankyou For Using My Batch Happy To Help..
echo Batch Code Issued In Public Interest By Prashant
echo 
pause>NUL
exit
