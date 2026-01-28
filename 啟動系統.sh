#!/bin/bash

echo "========================================"
echo "   BIM 監控系統 - 快速啟動腳本"
echo "========================================"
echo ""

echo "[1/3] 檢查 Node.js 環境..."
if ! command -v node &> /dev/null; then
    echo "❌ 未檢測到 Node.js，請先安裝 Node.js"
    echo "下載地址：https://nodejs.org/"
    exit 1
fi
echo "✅ Node.js 已安裝：$(node --version)"

echo ""
echo "[2/3] 檢查依賴..."
if [ ! -d "node_modules" ]; then
    echo "⏳ 首次運行，正在安裝依賴..."
    pnpm install
    if [ $? -ne 0 ]; then
        echo "❌ 依賴安裝失敗"
        exit 1
    fi
fi
echo "✅ 依賴已就緒"

echo ""
echo "[3/3] 啟動開發服務器..."
echo ""
echo "========================================"
echo "   系統啟動中，請稍候..."
echo "   啟動成功後請訪問："
echo "   http://localhost:3000"
echo "========================================"
echo ""

# macOS 自動打開瀏覽器
if [[ "$OSTYPE" == "darwin"* ]]; then
    sleep 3 && open http://localhost:3000 &
fi

pnpm dev
