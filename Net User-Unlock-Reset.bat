::Runs a net user command for a user, Prompts to unlock account, manually reset the password, or set to a deafault password
::By Derrick Harmon 09/15/14

@echo off

title Net User Unlock or Reset

:loop
cls
set /p username=Please enter username	

net user /domain %username% |more

pause
cls

:question
set /p question=Press U to unlock this account, R to reset the password manually, D to set the default password or C to cancel 


if /i '%question%'=='u' goto unlock
if /i '%question%'=='r' goto reset
if /i '%question%'=='d' goto defaultpassword
if /i '%question%'=='c' goto loop

IF NOT '%question%'=='' SET answer=%answer:~0,1%

echo %question% is not a valid answer, Please try again.
echo.

goto question

:unlock
net user %username% /domain /active:yes

net user %username% /domain |more
pause

goto loop

:reset
set /p password=Please enter a new password:	

net user /domain %username% %password%

net user %username% /domain |more
pause
goto loop


:defaultpassword
set /p confirm=Are you sure you want to reset the password for %username% to 138Oakland47660  Type Y or N	

if /i '%confirm%'=='y' goto confirmed
if /i '%confirm%'=='n' goto loop

IF NOT '%confirm%'=='' SET answer=%answer:~0,1%

echo %confirm% is not a valid answer, Please try again.
echo.

goto defaultpassword

:confirmed 
net user /domain %username% 138Oakland47660
pause
net user %username% /domain |more
pause

goto loop

