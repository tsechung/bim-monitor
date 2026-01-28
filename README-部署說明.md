# BIM 監控系統 - 快速開始

## 🚀 快速啟動（推薦）

### Windows 用戶

1. 雙擊運行 `啟動系統.bat`
2. 等待系統自動安裝依賴並啟動
3. 瀏覽器會自動打開 http://localhost:3000

### macOS/Linux 用戶

1. 在終端中執行：
   ```bash
   ./啟動系統.sh
   ```
2. 等待系統自動安裝依賴並啟動
3. 打開瀏覽器訪問 http://localhost:3000

---

## 📖 完整安裝指南

如果快速啟動失敗，請查看 **《BIM監控系統-安裝部署指南.md》** 獲取詳細的安裝步驟和故障排除方法。

---

## ⚙️ 環境配置

首次運行前，需要配置 `.env` 文件：

1. 複製 `.env.example` 為 `.env`（如果沒有 `.env.example`，請手動創建 `.env`）
2. 修改數據庫連接信息：
   ```env
   DATABASE_URL="mysql://root:your_password@localhost:3306/bim_monitor"
   JWT_SECRET="your-super-secret-jwt-key-change-this"
   ```

---

## 📦 項目結構

```
bim-monitor-system/
├── client/              # 前端代碼
├── server/              # 後端代碼
├── drizzle/             # 數據庫 Schema
├── shared/              # 共享代碼
├── 啟動系統.bat         # Windows 快速啟動腳本
├── 啟動系統.sh          # macOS/Linux 快速啟動腳本
└── README-部署說明.md   # 本文件
```

---

## 🛠️ 常用命令

```bash
# 安裝依賴
pnpm install

# 啟動開發服務器
pnpm dev

# 構建生產版本
pnpm build

# 啟動生產服務器
pnpm start

# 初始化數據庫
pnpm db:push

# 運行測試
pnpm test
```

---

## 📞 技術支持

遇到問題？請查看：

1. **《BIM監控系統-安裝部署指南.md》** - 詳細的安裝步驟和常見問題解答
2. 項目 GitHub Issues（如果有）
3. 聯繫開發者

---

## 🎯 系統功能

- ✅ **儀表板**：工地車輛統計、每小時進出圖表
- ✅ **BIM 模型**：3D 模型查看、AI 問答
- ✅ **車輛監控**：實時追蹤、門線計數、車型辨識
- ✅ **文件管理**：PDF/Excel/GLB 文件上傳和管理
- ✅ **系統設定**：攝影機配置、API Key 設定

---

**祝您使用愉快！** 🎉
