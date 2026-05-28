# 📤 GitHub 上传指南

## 方式一：使用 GitHub CLI（推荐）

### 1. 安装 GitHub CLI
```bash
# Windows (PowerShell 管理员)
winget install GitHub.cli

# 或者访问 https://cli.github.com/ 下载安装
```

### 2. 登录 GitHub
```bash
gh auth login
# 选择 GitHub.com → HTTPS → 浏览器登录
```

### 3. 一键上传
```bash
cd Desktop/attention-trainer
gh repo create attention-trainer --public --source=. --remote=origin --push --description "注意力训练中心 - Stroop干扰训练与舒尔特方格"
```

---

## 方式二：手动上传（网页操作）

### 步骤 1：创建 GitHub 仓库
1. 访问 https://github.com/new
2. Repository name: `attention-trainer`
3. Description: `注意力训练中心 - Stroop干扰训练与舒尔特方格`
4. 选择 **Public**
5. ❌ **不要勾选** Add a README file / Add .gitignore / Choose a license
6. 点击 **Create repository**

### 步骤 2：推送代码
在终端中运行：
```bash
cd C:/Users/16946/Desktop/attention-trainer

# 添加远程仓库（替换 你的用户名）
git remote add origin https://github.com/你的用户名/attention-trainer.git

# 推送
git push -u origin main
```

### 步骤 3：输入凭证
- 用户名：你的 GitHub 用户名
- 密码：**Personal Access Token**（不是登录密码！）

> ⚠️ GitHub 已不支持密码登录，需要使用 Token：
> 1. 访问 https://github.com/settings/tokens
> 2. 点击 **Generate new token (classic)**
> 3. 勾选 `repo` 权限
> 4. 生成后复制 Token 作为密码使用

---

## 方式三：直接上传 ZIP

1. 访问 https://github.com/new
2. 创建仓库 `attention-trainer`
3. 在仓库页面点击 **uploading an existing file**
4. 上传桌面的 `attention-trainer.zip` 中的所有文件
5. 提交更改

---

## 上传后设置

### 启用 GitHub Pages（免费托管）
1. 进入仓库 → Settings → Pages
2. Source 选择 `Deploy from a branch`
3. Branch 选择 `main` / `/ (root)`
4. 点击 Save
5. 访问 `https://你的用户名.github.io/attention-trainer/`

### 添加 Topics
在仓库页面点击 ⚙️ 图标，添加：
`attention-training` `stroop-effect` `schulte-grid` `javascript` `html5` `css3` `brain-training`
