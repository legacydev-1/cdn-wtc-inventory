@echo off
:: Variables
set REPO_URL=https://github.com/legacydev-1/cdn-wtc-inventory.git
set BRANCH_NAME=main

:: Obtenir la date et l'heure actuelles
for /f "tokens=1-4 delims=/ " %%a in ("%date% %time%") do (
    set CURRENT_DATE=%%a-%%b-%%c
    set CURRENT_TIME=%%d
)
set COMMIT_MESSAGE=Update: %CURRENT_DATE% %CURRENT_TIME%

:: Vérification si le dossier est déjà un dépôt Git
if not exist ".git" (
    echo Initialisation du dépôt Git...
    git init
    git remote add origin %REPO_URL%
    git branch -M %BRANCH_NAME%
)

:: Ajout des fichiers et commit
echo Ajout des fichiers au commit...
git add .
git commit -m "%COMMIT_MESSAGE%"

:: Envoi des modifications sur GitHub
echo Envoi des modifications sur GitHub...
git push -u origin %BRANCH_NAME%

echo Mise à jour terminée.
pause
