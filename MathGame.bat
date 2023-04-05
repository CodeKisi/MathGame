:: Command Line Math Game in Batch 4/4/23
@echo off
title Command Line Math Game in Batch
color 02

set totalPoints=0
set counter=1
set minval=1
set maxval=4

cls
title Math Game by CodeKisi
echo:      
echo:       __       __              __      __               ______                                          
echo:      !  \     /  \            !  \    !  \             /      \                                         
echo:      ! $$\   /  $$  ______   _! $$_   ! $$____        !  $$$$$$\  ______   ______ ____    ______        
echo:      ! $$$\ /  $$$ !      \ !   $$ \  ! $$    \       ! $$ __\$$ !      \ !      \    \  /      \       
echo:      ! $$$$\  $$$$  \$$$$$$\ \$$$$$$  ! $$$$$$$\      ! $$!    \  \$$$$$$\! $$$$$$\$$$$\!  $$$$$$\      
echo:      ! $$\$$ $$ $$ /      $$  ! $$ __ ! $$  ! $$      ! $$ \$$$$ /      $$! $$ ! $$ ! $$! $$    $$      
echo:      ! $$ \$$$! $$!  $$$$$$$  ! $$!  \! $$  ! $$      ! $$__! $$!  $$$$$$$! $$ ! $$ ! $$! $$$$$$$$      
echo:      ! $$  \$ ! $$ \$$    $$   \$$  $$! $$  ! $$       \$$    $$ \$$    $$! $$ ! $$ ! $$ \$$     \      
echo:       \$$      \$$  \$$$$$$$    \$$$$  \$$   \$$        \$$$$$$   \$$$$$$$ \$$  \$$  \$$  \$$$$$$$      
echo:                                                                                                         
echo:                                                                                                         
echo:                                                                                                         
echo:                         __                  _______               __                __                  
echo:                        !  \                !       \             !  \              !  \                 
echo:                         \$$ _______        ! $$$$$$$\  ______   _! $$_     _______ ! $$____             
echo:                        !  \!       \       ! $$__/ $$ !      \ !   $$ \   /       \! $$    \            
echo:                        ! $$! $$$$$$$\      ! $$    $$  \$$$$$$\ \$$$$$$  !  $$$$$$$! $$$$$$$\           
echo:                        ! $$! $$  ! $$      ! $$$$$$$\ /      $$  ! $$ __ ! $$      ! $$  ! $$           
echo:                        ! $$! $$  ! $$      ! $$__/ $$!  $$$$$$$  ! $$!  \! $$_____ ! $$  ! $$           
echo:                        ! $$! $$  ! $$      ! $$    $$ \$$    $$   \$$  $$ \$$     \! $$  ! $$           
echo:                         \$$ \$$   \$$       \$$$$$$$   \$$$$$$$    \$$$$   \$$$$$$$ \$$   \$$           
echo:                                                                                                         
echo:                                                                                                         
echo:                                                                                                         
echo:               
timeout /t 5

cls
echo:       
echo:         ______                                   __                      __        __                 
echo:        /      \                                 !  \                    !  \      !  \                
echo:       !  $$$$$$\  ______    ______    ______   _! $$_     ______    ____! $$      ! $$____   __    __ 
echo:       ! $$   \$$ /      \  /      \  !      \ !   $$ \   /      \  /      $$      ! $$    \ !  \  !  \
echo:       ! $$      !  $$$$$$\!  $$$$$$\  \$$$$$$\ \$$$$$$  !  $$$$$$\!  $$$$$$$      ! $$$$$$$\! $$  ! $$
echo:       ! $$   __ ! $$   \$$! $$    $$ /      $$  ! $$ __ ! $$    $$! $$  ! $$      ! $$  ! $$! $$  ! $$
echo:       ! $$__/  \! $$      ! $$$$$$$$!  $$$$$$$  ! $$!  \! $$$$$$$$! $$__! $$      ! $$__/ $$! $$__/ $$
echo:        \$$    $$! $$       \$$     \ \$$    $$   \$$  $$ \$$     \ \$$    $$      ! $$    $$ \$$    $$
echo:         \$$$$$$  \$$        \$$$$$$$  \$$$$$$$    \$$$$   \$$$$$$$  \$$$$$$$       \$$$$$$$  _\$$$$$$$
echo:                                                                                             !  \__! $$
echo:                                                                                              \$$    $$
echo:                                                                                               \$$$$$$ 
echo:                     ______                   __            __    __  __            __                 
echo:                    /      \                 !  \          !  \  /  \!  \          !  \                
echo:                   !  $$$$$$\  ______    ____! $$  ______  ! $$ /  $$ \$$  _______  \$$                
echo:                   ! $$   \$$ /      \  /      $$ /      \ ! $$/  $$ !  \ /       \!  \                
echo:                   ! $$      !  $$$$$$\!  $$$$$$$!  $$$$$$\! $$  $$  ! $$!  $$$$$$$! $$                
echo:                   ! $$   __ ! $$  ! $$! $$  ! $$! $$    $$! $$$$$\  ! $$ \$$    \ ! $$                
echo:                   ! $$__/  \! $$__/ $$! $$__! $$! $$$$$$$$! $$ \$$\ ! $$ _\$$$$$$\! $$                
echo:                    \$$    $$ \$$    $$ \$$    $$ \$$     \! $$  \$$\! $$!       $$! $$                
echo:                     \$$$$$$   \$$$$$$   \$$$$$$$  \$$$$$$$ \$$   \$$ \$$ \$$$$$$$  \$$                
echo:                                                                                                       
echo:                                                                                                       
echo:                                                                                                       
timeout /t 5 

:menu
cls
title Math Game ~ Menu
echo:
echo:
echo:
echo:
echo:      _____________________________________________________________
echo:
echo:                       Command Line Math Game in Batch
echo:
echo:                         [1] Play/Continue
echo:                         [2] New Game
echo:                         [3] Save
echo:                         [4] Load
echo:                         [5] Exit
echo:
echo:                       Total Points: %totalPoints%
echo:
echo:                       Created by CodeKisi
echo:
echo:      ______________________________________________________________
echo:
choice /c 12345 /n
if %errorlevel% equ 1 goto start
if %errorlevel% equ 2 goto newgame
if %errorlevel% equ 3 goto save
if %errorlevel% equ 4 goto load
if %errorlevel% equ 5 goto exitprompt

:newgame
cls
title Math Game ~ New Game
echo Creating new game . . .
echo Warning: This will delete all previously saved games
echo Continue Y/N? 
choice /c yn /n
if %errorlevel%==1 (
	if exist *.savefile del *.savefile
	goto newsave
) 
if %errorlevel%==2 (
	goto menu
)

:save 
cls
title Math Game ~ Save
for /f %%c in ('dir /b *.savefile ^| find /c /v ""') do set "count=%%c"
echo Available savefiles %count%: 
for %%f in (*.savefile) do (
	echo %%f
)
echo.
if %count%==1 goto savecurrentprogress
if %count% GTR 1 (
	set /p saveFile=Enter file name: 
	echo %totalPoints% > "%saveFile%.savefile" & echo Saving complete & pause & goto menu
)
if %count% LSS 1 goto newsave

:savecurrentprogress
:: enclosed in quotes to prevent whitespace errors
set "fileName="
for /f "delims=" %%a in ('dir /b *.savefile') do (
	set "fileName=%%~na"
)
echo Do you want to save it to your current progress?
choice /c yn
if %errorlevel%==1 echo %totalPoints% > %fileName%.savefile & goto menu
:: %~n0.savefile expands to the name of the current script without 
:: the file extension, followed by the .savefile extension
if %errorlevel%==2 goto newsave

:newsave
cls
title Math Game ~ New Save
set /p saveFile=Name your savefile: 
if exist %saveFile%.savefile (
	echo Current file name exists
	echo Overwrite
	choice /c yn
	if %errorlevel%==1 (
		goto savefile
	)
	if %errorlevel%==2 (
		goto newsave
	)
)
goto savefile

:savefile
echo %totalPoints% > %saveFile%.savefile
	if exist %saveFile%.savefile echo Save file complete! & pause > nul & goto menu
	if not exist %saveFile%.savefile echo Error saving file. Try again & pause > nul & goto save


:exitsave
for /f %%c in ('dir /b *.savefile ^| find /c /v ""') do set "count=%%c"
if %count% EQU 1 (
	set /p savePoints < *.savefile
	if %totalPoints% equ savePoints(
	goto exit
)
if not exist "*.savefile" (
	echo Save file doesn't exist
	pause
	goto exit
)

:load 
cls
title Math Game ~ Load
echo Available savefiles: 
for %%f in (*.savefile) do (
	echo %%f
)
echo.
set /p saveFileName=Enter name of save file: 
if exist %saveFileName%.savefile echo File name exists! & pause & goto loadgame
if not exist %saveFileName%.savefile echo File name doesn't exist & pause & goto menu

:loadgame
cls
set /p totalPoints=<%saveFileName%.savefile
echo Loaded points from last time
timeout /t 2
goto menu

:start
cls
title Math Game ~ Start
set /a randomChoice=%RANDOM% %%4 +1
set /a randomOne=%RANDOM% * 20 / 32768 + 1
set /a randomTwo=%RANDOM% * 20 / 32768 + 1
echo %randomChoice%
if %randomChoice% equ 1 goto add 
if %randomChoice% equ 2 goto sub
if %randomChoice% equ 3 goto mul
if %randomChoice% equ 4 goto div
:: set /a random=%RANDOM% * (%maxval% - %minval% + 1) / 32768 + %minval%
:: set /a num=%random% %%100 +1
:: sets random number [1-100]

:add
cls
title Math Game ~ Addition
echo Question #%counter%: Addition
echo %randomOne% + %randomTwo% = ?
set /p answer=Enter your answer:  
set /a correctAnswer=randomOne+randomTwo
if %answer%==exit goto exitprompt
if %answer%==q goto exitprompt
if %answer%==menu goto menu
if %answer% equ %correctAnswer% echo Correct! The correct answer is %correctAnswer% & set /a totalPoints+=1
if not %answer% equ %correctAnswer% echo Wrong! The correct answer is %correctAnswer% 
echo Total Points: %totalPoints%
set /a counter+=1
pause > nul
goto start

:sub
cls
title Math Game ~ Subtraction
echo Question #%counter%: Subtraction
echo %randomOne% - %randomTwo% = ?
set /p answer=Enter your answer: 
set /a correctAnswer=randomOne-randomTwo
if %answer%==exit goto exitprompt
if %answer%==q goto exitprompt
if %answer%==menu goto menu
if %answer% equ %correctAnswer% echo Correct! The correct answer is %correctAnswer% & set /a totalPoints+=1
if not %answer% equ %correctAnswer% echo Wrong! The correct answer is %correctAnswer% 
echo Total Points: %totalPoints%
set /a counter+=1
pause > nul
goto start

:mul
cls
title Math Game ~ Multiplication
echo Question #%counter%: Multiplication
echo %randomOne% * %randomTwo% = ?
set /p answer=Enter your answer: 
set /a correctAnswer=randomOne*randomTwo
if %answer%==exit goto exitprompt
if %answer%==q goto exitprompt
if %answer%==menu goto menu
if %answer% equ %correctAnswer% echo Correct! The correct answer is %correctAnswer% & set /a totalPoints+=1
if not %answer% equ %correctAnswer% echo Wrong! The correct answer is %correctAnswer% 
echo Total Points: %totalPoints%
set /a counter+=1
pause > nul
goto start

:div
cls
title Math Game ~ Division
echo Question #%counter%: Division
echo %randomOne% / %randomTwo% = ?
set /p answer=Enter your answer: 
set /a correctAnswer=randomOne/randomTwo
if %answer%==exit goto exitprompt
if %answer%==q goto exitprompt
if %answer%==menu goto menu
if %answer% equ %correctAnswer% echo Correct! The correct answer is %correctAnswer% & set /a totalPoints+=1
if not %answer% equ %correctAnswer% echo Wrong! The correct answer is %correctAnswer% 
echo Total Points: %totalPoints%
set /a counter+=1
pause > nul
goto start

:exitprompt
title Math Game ~ Exit
if %totalPoints% GEQ 1 (
	choice /c yn /t 5 /D N /N /M "Do you want to save your progress? [Y,N] Ignore to exit"
		if %errorlevel%==1 goto save
		if %errorlevel%==2 goto exit
)

:exit
cls
echo Exiting program . . . 
timeout /t 3
exit