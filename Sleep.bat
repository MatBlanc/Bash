echo off
cls
@title Sleep
color F0
:debut
cls
echo _       
echo _      
set /p menu= Que voulez vous faire ? 1. Planifier 2. Annuler 3. Quitter : 
if %menu%== 1 (goto arret) else (if %menu%== 2 (goto annuler) else (if %menu%== 3 (goto fin) else (goto debut) ) )
:arret
cls
echo _
echo _
set /p timer= Dans combien de minutes voulez vous arretez l'ordinateur ?"( >5 )" : 
if %timer% LEQ 4 (cls && goto arret)
set /a time= %timer%*60
shutdown /s /t %time%
cls
pause
goto debut
:annuler
shutdown /a
cls
pause
goto debut
:fin
cls
