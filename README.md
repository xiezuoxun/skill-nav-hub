# Skill 导航台 · 我的 AI 工具库

一个**单文件、零外链、可离线**的 AI 工具 / Skill 分类查找导航页。
把杂乱的 WorkBuddy 技能、MCP 工具按分类 + 场景归拢，支持搜索、筛选、收藏、本地添加新技能。

> 部署方式：通过 GitHub Pages 静态托管（方案 B）。任意设备浏览器打开链接即用，数据存浏览器本地（localStorage），不上传服务器。

## 特性

- 🔍 **搜索**：关键词匹配工具名 / 描述 / 标签
- 🗂️ **分类**：13 大类（含「MCP 工具」）+ 13 个使用场景入口
- ⭐ **收藏**：一键收藏常用工具，本地持久化
- ➕ **本地添加**：页面内「+添加」按钮可暂存自己新装的 skill（存浏览器本地）
- 📴 **离线可用**：全部 CSS/JS/SVG 内联，无任何外部依赖；断网也能开
- 📱 **双端适配**：手机 / 电脑自动单列或分栏，可「添加到主屏幕」当 APP

## 本地预览

无需服务器，直接双击 `index.html` 即可在浏览器打开。

或用任意静态服务器：

```bash
# Python
python3 -m http.server 8080
# 然后访问 http://localhost:8080
```

## 部署到 GitHub Pages

仓库已 `git init`（main 分支，含首次提交）。在本机终端执行：

```bash
# 1. 进入目录（若已在本目录可跳过）
cd C:/Users/lenovo/WorkBuddy/2026-10-23-11-14-11/skill-nav-hub

# 2. 关联你的 GitHub 仓库（二选一）
#    方式 A：项目站点（URL 带仓库名）
git remote add origin https://github.com/<你的GitHub用户名>/skill-nav-hub.git
#    方式 B：用户站点（URL 更短，仓库名必须叫 <用户名>.github.io）
# git remote add origin https://github.com/<你的GitHub用户名>/<你的GitHub用户名>.github.io.git

# 3. 推送
git push -u origin main
```

推送后到 GitHub → 仓库 **Settings → Pages**（或 **Pages** 侧栏）→
Source 选 **Deploy from a branch** → Branch 选 **main** → 目录选 **/(root)** → Save。

约 1–2 分钟后即可访问：

- 方式 A：`https://<你的GitHub用户名>.github.io/skill-nav-hub/`
- 方式 B：`https://<你的GitHub用户名>.github.io/`

## 更新导航台内容

### ⚠️ 不会自动同步（重要）

GitHub Pages 是**静态托管**：仓库文件不变，线上页面就不会变。
而且导航台的源文件在 WorkBuddy 沙箱里生成，**沙箱出网受限 + 没有你的 GitHub 凭证**，
所以 AI 改完本地 `index.html` 后，**无法替你自动 push 到 GitHub**。

结论：**以后让我「更新导航台」不会自动同步到线上**，需要你本机做一次重新推送（半自动）。

### 半自动更新流程

1. 你让我加 / 改某个 skill → AI 在本地 `index.html` 改好（含静态卡片）→ 把文件交给你；
2. 你用下面任一种方式把最新 `index.html` 推上去（二选一）：

   **方式 A · 命令行（Git Bash / PowerShell / CMD 均可）**
   ```bash
   cd C:/Users/lenovo/WorkBuddy/2026-10-23-11-14-11/skill-nav-hub
   git add index.html
   git commit -m "更新：新增 xxx 工具"
   git push
   ```

   **方式 B · GitHub Desktop（全程鼠标，不用命令行）**
   打开 GitHub Desktop → 选中 skill-nav-hub 仓库 → 它会自动识别改动 →
   写一句摘要 → 点 **Push origin** 即可。

3. 推送后约 1–2 分钟，`https://xiezuoxun.github.io/skill-nav-hub/` 自动生效。

> 注：页面「+添加」写入的是浏览器本地（localStorage），不会进源码、也不会跨设备同步；
> 要正式入册并同步到线上，必须把条目写进 `index.html` 的静态卡片后提交推送。

## 文件说明

| 文件 | 作用 |
| --- | --- |
| `index.html` | 导航台本体（单文件，含全部数据 / 样式 / 脚本） |
| `README.md` | 本说明 |
