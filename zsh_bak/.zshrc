HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

setopt SHARE_HISTORY # share history across multiple zsh sessions
setopt INC_APPEND_HISTORY # append commands as they are typed, not at shell exit
setopt HIST_EXPIRE_DUPS_FIRST # clear duplicates from history first
setopt HIST_FIND_NO_DUPS # ignore duplicates when searching
setopt HIST_IGNORE_DUPS # do not enter command into history is duplicate of previous
setopt HIST_REDUCE_BLANKS # remove blank lines from history
setopt HIST_VERIFY # https://zsh.sourceforge.io/Doc/Release/Options.html
setopt GLOBDOTS # let files beginning with . be matched without explicit specification

bindkey -v # vi mode
bindkey '^]]A' up-line-or-search # arrow history up-search
bindkey '^[[B' down-line-or-search # arrow history down-search

PROMPT="%B[%n@%m %1~]%b %# "

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' # case-insensitive match
zstyle :compinstall filename '/home/alex/.zshrc'
autoload -Uz compinit && compinit

# useful aliases
alias nz="nvim ~/.zshrc"
alias sz="source ~/.zshrc"

alias path='echo; tr ":" "\n" <<< "$PATH"; echo;' # print PATH
alias ls='ls -p --color=tty' # ls with files outlined
alias ll='ls -lh' # ls as list and human readable
alias la='ls -lah' # ls with dotfiles
alias lt='du -sh * | sort -h' # print directory with storage
alias lc='ls -1 | wc -l' # count number of files in directory

alias pokemon='pokemon-colorscripts' # https://gitlab.com/phoneybadger/pokemon-colorscripts

pokemon-colorscripts -r
