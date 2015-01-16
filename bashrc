
# ----------------------------
# --- alias --
# ----------------------------

# --- git ---
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gch='git checkout'
alias gcl='git clone'
alias gd='git diff'
alias gl='git log'
alias gp='git push'
alias gpl='git pull'
alias grm='git rm'
alias grs='git reset'
alias gs='git status'
alias gt='git tag'
alias gtree="git log --graph --all --color --pretty='%x09%h %cn%x09%s %Cred%d%Creset'"
alias tig='tig'

# --- golang ---
alias gr='go run'

# --- ls ---
alias ls='ls --color=auto'
alias la='ls -A'
alias lah='ls -lah'
alias ll='ls -alF'
alias l='ls -CF'
alias s='ls'

# --- etc. ---
alias c='clear'
alias grep='ack'
alias p='ps aux'
alias t='tmux'
alias tls='tmux ls'
alias ta='tmux attach -t'
alias v='vim'

# ----------------------------
# --- For Ubuntu --
# ----------------------------
if [ -e /etc/os-release ]; then
	if [ `\grep -i 'NAME="Ubuntu"' /etc/os-release` ]; then
		alias apti='sudo apt-get install'
		alias apts='apt-cache search'
		alias aptu='sudo apt-get update'
		alias aptr='sudo apt-get remove'
		alias grep='ack-grep'
	fi
fi

# ----------------------------
# ---  --
# ----------------------------
if [ "$TMUX" = "" ]; then
	tmux
fi

