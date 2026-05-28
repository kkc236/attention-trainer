@echo off
echo ========================================
echo   注意力训练中心 - GitHub 上传工具
echo ========================================
echo.

REM 检查是否安装了 gh CLI
where gh >/dev/null 2>&1
if %errorlevel% neq 0 (
    echo [!] GitHub CLI (gh) 未安装
    echo.
    echo 请先安装 GitHub CLI：
    echo   方法1: winget install GitHub.cli
    echo   方法2: 访问 https://cli.github.com/ 下载安装
    echo.
    echo 安装后运行: gh auth login
    echo.
    pause
    exit /b
)

echo [1/3] 登录 GitHub...
gh auth status >/dev/null 2>&1
if %errorlevel% neq 0 (
    echo 请在弹出的浏览器中完成登录...
    gh auth login
)

echo [2/3] 创建远程仓库...
gh repo create attention-trainer --public --source=. --remote=origin --push --description "注意力训练中心 - Stroop干扰训练与舒尔特方格"

if %errorlevel% eq 0 (
    echo.
    echo [3/3] 上传完成！
    echo.
    echo 仓库地址：
    gh browse -n
    echo.
) else (
    echo.
    echo 上传失败，尝试手动操作：
    echo   1. 访问 https://github.com/new 创建新仓库
    echo   2. 仓库名填: attention-trainer
    echo   3. 不要勾选 README/License/.gitignore
    echo   4. 创建后运行以下命令：
    echo.
    echo   git remote add origin https://github.com/你的用户名/attention-trainer.git
    echo   git push -u origin main
    echo.
)

pause
