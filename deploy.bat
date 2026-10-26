@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo === Deploy Skill Nav Hub to GitHub Pages ===
git add -A
git diff --cached --quiet
if %errorlevel%==0 (
  echo [info] No changes detected, skip commit.
) else (
  git commit -m "update: skill-nav-hub"
)
git push
echo [done] Live in 1-2 min: https://xiezuoxun.github.io/skill-nav-hub/
pause
