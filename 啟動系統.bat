@echo off
chcp 65001 >nul
echo ========================================
echo    BIM 監控系統 - 快速啟動腳本
echo ========================================
echo.

echo [1/3] 檢查 Node.js 環境...
node --version >nul 2>&1
if errorlevel 1 (
    echo ❌ 未檢測到 Node.js，請先安裝 Node.js
    echo 下載地址：https://nodejs.org/
    pause
    exit /b 1
)
echo ✅ Node.js 已安裝

echo.
echo [2/3] 檢查依賴...
if not exist "node_modules" (
    echo ⏳ 首次運行，正在安裝依賴...
    call pnpm install
    if errorlevel 1 (
        echo ❌ 依賴安裝失敗
        pause
        exit /b 1
    )
)
echo ✅ 依賴已就緒

echo.
echo [3/3] 啟動開發服務器...
echo.
echo ========================================
echo    系統啟動中，請稍候...
echo    啟動成功後會自動打開瀏覽器
echo    訪問地址：http://localhost:3000
echo ========================================
echo.

start http://localhost:3000
call pnpm dev

pause
