# include `.bashrc`

if [ -f ~/.bashrc ]; then
  ~/.bashrc
fi

export LANG=ja_JP.UTF-8
export LC_ALL='ja_JP.UTF-8'
export LESSCHARSET=utf-8
export JAVA_TOOL_OPTIONS=~Dfile.encoding=UTF-8
export CLICOLOR=1
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim

# promptでgit branchを表示する関数
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
function promps {

    local  BLACK="\[\e[1;30m\]"
    local  RED="\[\e[1;31m\]"
    local  GREEN="\[\e[1;32m\]"
    local  YELLOW="\[\e[1;33m\]"
    local  BLUE="\[\e[1;34m\]"
    local  MAGENTA="\[\e[1;35m\]"
    local  CYAN="\[\e[1;36m\]"
    local  GRAY="\[\e[1;37m\]"
    local  WHITE="\[\e[00m\]"
    export PS1="${YELLOW}\T ${BLUE}\u${GRAY}@${CYAN}\h${GRAY}:${RED}\W${MAGENTA}\$(parse_git_branch) ${GREEN}\\$ \[$(tput sgr0)\]"
}
promps
export PATH=$PATH
