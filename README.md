# 🧠 注意力训练中心 | Attention Trainer

一个基于浏览器的注意力训练应用，包含 Stroop 干扰任务和舒尔特方格两大经典训练模块，帮助提升专注力和抗干扰能力。

![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black)
![License](https://img.shields.io/badge/License-MIT-green)

---

## ✨ 功能特性

### 🎨 Stroop 干扰训练
Stroop 效应是心理学中最经典的注意力干扰范式之一。当文字含义与显示颜色不一致时，大脑会产生认知冲突。

| 模式 | 说明 |
|------|------|
| **数值干扰** | 显示一个数字（如 "5"），但用不同颜色渲染，需判断**颜色**而非数字 |
| **文字干扰** | 显示颜色文字（如 "红"），但用不同颜色渲染，需判断**显示颜色** |
| **混合模式** | 随机切换以上两种模式 |

**可配置项：**
- 📊 题目数量：10 / 20 / 30 / 50 题
- ⏱️ 限时作答：不限时 / 3秒 / 2秒 / 1.5秒
- ⌨️ 键盘快捷键：数字键 `1`~`9` 快速作答，`Esc` 结束

### 📊 舒尔特方格
舒尔特方格是国际公认的注意力训练方法，通过按顺序快速定位目标来锻炼视觉搜索和注意力集中能力。

| 配置项 | 选项 |
|--------|------|
| **网格大小** | 3×3、5×5、7×7、9×9 |
| **内容类型** | 数字、字母、中文数字、颜色文字 |
| **排列顺序** | 正序（从小到大）/ 倒序（从大到小）|
| **提示功能** | 开启后按 `H` 键高亮目标位置 |

### 📈 训练统计
- 🏆 三星评级系统（根据正确率和速度）
- 📋 完整训练历史记录
- ⏱️ 精确计时器（精确到 0.1 秒）
- 📊 正确率 / 平均反应时间 / 连续训练天数
- 💾 数据本地持久化（localStorage）

### 🎨 界面设计
- 🌙 暗色主题，长时间训练不伤眼
- ✨ 渐变背景动画
- 🎯 实时进度指示
- ✅❌ 即时正误视觉反馈
- 📱 响应式设计，支持移动端

---

## 🚀 快速开始

### 方式一：直接打开
1. 下载或克隆本项目
2. 双击 `index.html` 即可在浏览器中打开
3. 无需安装任何依赖，无需服务器

### 方式二：GitHub Pages
1. Fork 本项目
2. 在 Settings → Pages 中启用 GitHub Pages
3. 访问 `https://你的用户名.github.io/attention-trainer/`

```bash
# 克隆项目
git clone https://github.com/你的用户名/attention-trainer.git

# 直接用浏览器打开
cd attention-trainer
start index.html    # Windows
open index.html     # macOS
xdg-open index.html # Linux
```

---

## 📁 项目结构

```
attention-trainer/
├── index.html          # 完整应用（HTML + CSS + JavaScript 单文件）
├── README.md           # 项目说明文档
├── LICENSE             # MIT 开源许可证
├── .gitignore          # Git 忽略规则
└── docs/
    └── screenshots/    # 应用截图（可选）
```

> 💡 本项目采用**单文件架构**，所有代码集中在 `index.html` 中，方便部署和分享。

---

## 🎮 使用指南

### Stroop 训练
1. 选择干扰模式和题目数量
2. 点击「开始训练」
3. 3-2-1 倒计时后开始
4. 观察屏幕中央的数字/文字，**忽略其含义，只判断显示颜色**
5. 点击底部对应颜色编号的按钮
6. 完成后查看成绩和评级

### 舒尔特方格
1. 选择网格大小和内容类型
2. 点击「开始训练」
3. 3-2-1 倒计时后开始
4. 按顺序（或倒序）尽快找到并点击目标
5. 点击错误会有抖动提示
6. 完成后查看用时和准确率

### 键盘快捷键

| 按键 | 功能 |
|------|------|
| `1` ~ `9` | Stroop 模式下快速选择颜色 |
| `H` | 舒尔特模式下显示提示（需开启） |
| `Esc` | 中断当前训练 |

---

## 🧪 训练建议

| 级别 | Stroop | 舒尔特 |
|------|--------|--------|
| 初级 | 数值干扰 · 不限时 · 10题 | 3×3 · 数字 · 正序 |
| 中级 | 混合模式 · 3秒限时 · 20题 | 5×5 · 字母 · 正序 |
| 高级 | 混合模式 · 1.5秒限时 · 30题 | 7×7 · 中文 · 倒序 |
| 专家 | 混合模式 · 1.5秒 · 50题 | 9×9 · 颜色 · 倒序 |

---

## 🛠️ 技术栈

- **HTML5** — 页面结构
- **CSS3** — 样式与动画（CSS Variables、Grid、Flexbox、动画）
- **Vanilla JavaScript** — 逻辑实现（零依赖）
- **LocalStorage** — 数据持久化

---

## 📜 许可证

本项目基于 [MIT License](LICENSE) 开源。

---

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

1. Fork 本项目
2. 创建功能分支：`git checkout -b feature/新功能`
3. 提交更改：`git commit -m '添加新功能'`
4. 推送分支：`git push origin feature/新功能`
5. 提交 Pull Request

---

## ⭐ 支持

如果这个项目对你有帮助，请给一个 ⭐ Star！

---

> 🧠 **每天训练 10 分钟，持续提升专注力！**
