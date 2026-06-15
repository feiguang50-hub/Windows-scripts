# Windows 脚本工具集

常用的 Windows 清理、维护脚本合集

## 📂 脚本列表

### cleanup-autocad.bat
一键彻底清理 AutoCAD 所有残留（服务、许可、文件、注册表）

**使用步骤：**
1. 控制面板正常卸载 AutoCAD
2. 右键此脚本 → 以管理员身份运行
3. 重启电脑
4. 重装 AutoCAD

**清理范围：**
- 5 个 Autodesk 相关服务
- 许可文件（FLEXnet、Adlm）
- C/D/E/F 盘的主程序目录
- 用户配置 + 计划任务
- 注册表 Autodesk 相关项

**⚠️ 注意事项：**
- 文档里的 `Autodesk` 文件夹脚本不会自动删，自己检查有没有要保留的图纸
- 此脚本清理范围较广，建议重装 CAD 前使用

### organize-desktop.bat
一键把桌面文件按类型自动分类到子文件夹

**使用步骤：**
1. 右键此脚本 → 运行（**不需要**管理员权限）
2. 脚本会自动在桌面创建 9 个分类文件夹并整理文件

**分类规则：**

| 文件夹 | 包含类型 |
|--------|----------|
| 文档 | .doc .docx .xls .xlsx .ppt .pptx .pdf .txt .md .wps |
| 图片 | .jpg .png .gif .bmp .svg .webp |
| 视频 | .mp4 .avi .mkv .mov .flv .wmv |
| 音频 | .mp3 .wav .flac .aac .m4a |
| 压缩包 | .zip .rar .7z .tar .gz |
| 安装包 | .exe .msi .iso |
| CAD | .dwg .dxf .dwf |
| 代码 | .py .js .html .css .java .cpp .bat |
| 快捷方式 | .lnk .url |
| 其他 | 识别不到的类型 |

**⚠️ 注意事项：**
- 脚本不会移动已有的分类文件夹，只整理文件
- 文件是**移动**不是复制，整理后桌面会变空
- 建议第一次整理前先看看桌面有没有正在用的文件

### matrix-rain.bat
终端里跑 Matrix 风格的绿色代码雨动画

**使用步骤：**
1. 双击脚本运行（**不需要**管理员权限）
2. 全屏看效果更爽（按 Alt+Enter 切全屏）
3. 按 Ctrl+C 退出

**特点：**
- 纯绿色字符（黑客帝国风）
- 自适应终端窗口大小
- 不依赖任何外部程序（用 PowerShell 实现）

**⚠️ 注意事项：**
- Windows Terminal 效果最好（Win11 自带，Win10 建议装一个）
- 命令提示符 (cmd) 也能跑但渲染慢一些
- 按 Ctrl+C 才能退出，关窗口也行

## 🚀 使用方法

**方法一：网页下载（最简单）**
1. 打开文件 → 点 `Raw` 按钮
2. `Ctrl+S` 保存到本地
3. 右键 → 以管理员身份运行

**方法二：git clone 整个仓库**
```bash
git clone git@github.com:feiguang50-hub/Windows-scripts.git
```

## ⚠️ 免责声明

本仓库中的脚本仅供学习和个人使用，请在使用前确认脚本内容。因使用本仓库脚本造成的任何数据丢失或系统问题，作者不承担责任。
