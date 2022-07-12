# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jelly/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=powerlevel10k/powerlevel10k


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status time user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode ssh)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=5

POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='cyan'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='green'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=0"
plugins=(git
    zsh-syntax-highlighting
    vi-mode
    zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh

alias tmux='tmux -u'
alias nv='nvim'
alias lzg='lazygit'
alias gw='cd ~/workspace'
alias gd='docker exec -it devbox /bin/zsh'
alias ra='ranger'
alias dc='docker-compose'
alias d='docker'
alias k='kubectl'
alias kap='kubectl apply'
alias kdes='kubectl describe'
alias ll='ls -al'
alias p3='python3'
alias p2='python'
alias rm='trash'

export LESS="-XRFS"


bindkey -M vicmd "j" vi-backward-char
bindkey -M visual "j" vi-backward-char
bindkey -M vicmd "i" up-history
bindkey -M vicmd "k" down-history
bindkey -M vicmd "a" vi-insert
bindkey -M vicmd "A" vi-add-next
#bindkey -M vicmd "yy" vi-yank-whole-line
bindkey -M vicmd "L" vi-end-of-line
bindkey -M vicmd "J" vi-beginning-of-line

# tmux
#export TERM=xterm-256color
POWERLEVEL9K_IGNORE_TERM_COLORS=true

KEYTIMEOUT=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=/Users/jelly/go/bin:$PATH

# java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
export CLASS_PATH=$JAVA_HOME/lib
export PATH="/usr/local/opt/node@16/bin:$PATH"

# spotify
export SPOTIPY_CLIENT_ID=d3ae31bc2f564679995041dc3371717a
export SPOTIPY_CLIENT_SECRET=11bc017315d542c7b1dc4521da809c57

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
