
# ----------------------------
# --- alias --
# ----------------------------

# --- git ---
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gcl='git clone'
alias gd='git diff'
alias gl='git log'
alias gp='git push'
alias gpl='git pull'
alias grm='git rm'
alias gs='git status'
alias gtree="git log --graph --all --color --pretty='%x09%h %cn%x09%s %Cred%d%Creset'"
alias tig='tig'

# --- golang ---
alias gr='go run'

# --- ls ---
alias la='ls -A'
alias lah='ls -lah'
alias ll='ls -alF'
alias l='ls -CF'
alias s='ls'

# --- etc. ---
alias c='clear'
alias grep='ack-grep'
alias p='ps aux'
alias t='tmux'
alias tl='tmux ls'
alias ta='tmux attach -t'

# ----------------------------
# --- For Ubuntu --
# ----------------------------
if [ -e /etc/os-release ]; then
	if [ `\grep -i 'NAME="Ubuntu"' /etc/os-release` ]; then
		alias apti='sudo apt-get install'
		alias apts='apt-cache search'
	fi
fi

# ----------------------------
# ---  --
# ----------------------------
if [ "$TMUX" = "" ]; then
	tmux
fi

