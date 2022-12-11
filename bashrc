#
# > josef's awesome* .bashrc file
# * not really awesome
#
# A faily standard .bashrc file, for a standard person like me!

### CREDITS:
# Derek Taylor's (DistroTube) .bashrc: https://gitlab.com/dwt1/dotfiles/-/blob/master/.bashrc
# - ARCHIVE EXTRACTION script
# enby prompt string: @pilum@octodon.social & @luci@skeletons.gay
# (https://octodon.social/@pilum/109364050993779997) & (https://skeletons.gay/notice/APhg3kERrrDlealSQy)
# PS1 version & original idea, respectively

### EXPORTS
export TERM="xterm-256color" # proper terminal colors
export EDITOR="nvim"         # set neovim as default editor

### SETTING OTHER ENVIRONMENT VARIABLES
if [ -z "$XDG_CONFIG_HOME" ] ; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi
if [ -z "$XDG_DATA_HOME" ] ; then
    export XDG_DATA_HOME="$HOME/.local/share"
fi
if [ -z "$XDG_CACHE_HOME" ] ; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

### PROMPTS
#PS1='[\u@\h \W]\$ '

# original PS1, from https://octodon.social/@pilum/109364050993779997
#PS1='\e[38;2;244;164;180m\u\e[38;2;255;255;255m@\e[38;2;91;206;250m\h \e[38;2;169;13;102m\w \e[38;2;252;244;52m>\e[38;2;255;255;255m>\e[38;2;156;89;209m>\e[38;2;0;0;0m> \[\033[00m\]'

# "fixed" with espace chars (\[, \]), use this one to prevent PS1 bash wrapping issues
#PS1='\[\e[38;2;244;164;180m\]\u\[\e[38;2;255;255;255m\]@\[\e[38;2;91;206;250m\]\h \[\e[38;2;169;13;102m\]\w \[\e[38;2;252;244;52m\]>\[\e[38;2;255;255;255m\]>\[\e[38;2;156;89;209m\]>\[\e[38;2;0;0;0m\]> \[\033[00m\]'

# 16 color compliant
PS1='\[\e[1;93m\]\t\[\033[0m\] \[\e[0;95m\]\u\[\e[0;39m\]@\[\e[0;94m\]\h \[\e[0;92m\]\w \[\033[00m\]\$ '

### SHOPT
shopt -s cdspell # autocorrects minor cd mispellings (sic)

### ALIASES
alias xclip="xclip -selection c"
alias meow="cat"

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

### MISC
# CHANGE TITLE OF TERMINAL
case ${TERM} in
  xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|alacritty|st|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
        ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
    ;;
esac

# ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"
