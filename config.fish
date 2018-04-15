set --export LANG ja_JP.UTF-8
set --export LC_ALL 'ja_JP.UTF-8'
set --export LESSCHARSET utf-8
set --export JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8
set --export EDITOR "env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim"
set --export HOMEBREW_EDITOR $EDITOR
set --export HOMEBREW_MAKE_JOBS 4
set --export HOMEBREW_CACHE ~/Library/Caches/Homebrew
set --export GOPATH $HOME
set --export PATH $PATH:$GOHOME/bin

# brew 全てを更新
alias au='brew update; and brew upgrade; and brew cask cleanup; mas upgrade'
alias ll='ls -laG'
alias rm='/usr/local/bin/rmtrash'

set --export PATH $PATH
