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
