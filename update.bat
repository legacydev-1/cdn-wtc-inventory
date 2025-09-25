@echo off
set REPO_URL=https://github.com/legacydev-1/cdn-wtc-inventory.git
set BRANCH_NAME=main

for /f "tokens=1-4 delims=/ " %%a in ("%date% %time%") do (
    set CURRENT_DATE=%%a-%%b-%%c
    set CURRENT_TIME=%%d
    set CURRENT_TIME=!CURRENT_TIME:~0,8!
)
set COMMIT_MESSAGE=Update: %CURRENT_DATE% %CURRENT_TIME%

if not exist ".git" (
    echo Initialisation du dépôt Git...
    git init
    git remote add origin %REPO_URL%
    git branch -M %BRANCH_NAME%
)

echo Vérification des modifications non validées...
git status --porcelain
if errorlevel 1 (
    echo Erreur lors de la vérification de l'état du dépôt.
    pause
    exit /b
)
for /f %%i in ('git status --porcelain') do (
    echo Modifications non validées détectées. Ajout et validation automatiques...
    git add .
    git commit -m "Validation automatique des modifications locales avant pull: %COMMIT_MESSAGE%"
)

echo Récupération des modifications distantes...
git pull origin %BRANCH_NAME% --rebase
if errorlevel 1 (
    echo Conflit détecté. Résolvez les conflits manuellement, puis exécutez "git add <fichiers>", "git rebase --continue", et relancez ce script.
    pause
    exit /b
)

echo Ajout des fichiers au commit...
git add .
git commit -m "%COMMIT_MESSAGE%"

echo Envoi des modifications sur GitHub...
git push -u origin %BRANCH_NAME%

echo Mise à jour terminée.
pause