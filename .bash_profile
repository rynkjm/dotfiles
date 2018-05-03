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

export PS1="\T \u@\h:\W\$(parse_git_branch) \\$ \[$(tput sgr0)\]"
export PATH=$PATH

