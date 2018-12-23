# Created by newuser for 5.6.2

USERNAME=`whoami`

autoload -U compinit
compinit -u

#prompt

autoload -Uz colors
colors

PROMPT="%n%{$fg[blue]%} %~%{$reset_color%} %(!.#.>) "

#alias

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'

#history

HISTSIZE=1000000
SAVEHIST=1000000
setopt extended_history
setopt hist_ignore_dups

#opt

setopt auto_cd
setopt auto_pushd
setopt auto_menu

#complement

zstyle ':completion:*:default' menu select=1
setopt correct
setopt complete_in_word

if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

