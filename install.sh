echo yuanbao_quickinstaller(git)v1.5
echo by geor
echo 正在检测和安装必要工具
info() { echo -e "\033[1;32m[INFO]\033[0m $1"; }
warn() { echo -e "\033[1;33m[WARN]\033[0m $1"; }
error() { echo -e "\033[1;31m[ERROR]\033[0m $1"; }
detect_pkg_manager() {
  if command -v apt &> /dev/null; then
    PKG_MANAGER="apt"
    INSTALL_CMD="sudo apt install -y"
    UPDATE_CMD="sudo apt update -y"
  elif command -v dnf &> /dev/null; then
    PKG_MANAGER="dnf"
    INSTALL_CMD="sudo dnf install -y"
    UPDATE_CMD="sudo dnf check-update || true"
  elif command -v pacman &> /dev/null; then
    PKG_MANAGER="pacman"
    INSTALL_CMD="sudo pacman -S --noconfirm"
    UPDATE_CMD="sudo pacman -Sy"
  elif command -v yum &> /dev/null; then
    PKG_MANAGER="yum"
    INSTALL_CMD="sudo yum install -y"
    UPDATE_CMD="sudo yum check-update || true"
  elif command -v apk &> /dev/null; then
    PKG_MANAGER="apk"
    INSTALL_CMD="sudo apk add"
    UPDATE_CMD="sudo apk update"
  else
    error "未识别的包管理器，请手动安装 Git 和 Python"
    exit 1
  fi
  info "检测到包管理器: $PKG_MANAGER"
}

# 安装 Git
install_git() {
  if command -v git &> /dev/null; then
    info "Git 已安装: $(git --version)"
    return
  fi

  warn "Git 未安装，正在安装..."
  $UPDATE_CMD
  $INSTALL_CMD git
}

# 安装 Python（优先 Python3）
install_python() {
  if command -v python3 &> /dev/null; then
    info "Python3 已安装: $(python3 --version)"
    return
  fi

  warn "Python3 未安装，正在安装..."

  case "$PKG_MANAGER" in
    apt)
      $INSTALL_CMD python3 python3-pip python3-venv
      ;;
    dnf|yum)
      $INSTALL_CMD python3 python3-pip
      ;;
    pacman)
      $INSTALL_CMD python python-pip
      ;;
    apk)
      $INSTALL_CMD python3 py3-pip
      ;;
  esac
}

# 可选：创建 python 软链接（部分系统只有 python3）
link_python() {
  if ! command -v python &> /dev/null && command -v python3 &> /dev/null; then
    warn "检测到 python 命令不存在，是否创建 python -> python3 软链接？[y/N]"
    read -r answer
    if [[ "$answer" =~ ^[Yy]$ ]]; then
      sudo ln -s "$(command -v python3)" /usr/local/bin/python
      info "已创建 python 软链接"
    fi
  fi
}

check() {
  detect_pkg_manager
  install_git
  install_python
  link_python

  info "✅ 环境检查完成"
  echo "Git:  $(git --version 2>/dev/null || echo '未安装')"
  echo "Python: $(python3 --version 2>/dev/null || echo '未安装')"
}

check

echo 准备克隆待选择的所有项目
git clone https://github.com/geor0001/Yuanbao-V6.5-G.git
echo 完成1/2
git clone github.com/anxi78/yuanbao_bot_client
echo 完成2/2
echo 进行下一步
