
# ----------------------------
# --- alias --
# ----------------------------

# --- git ---
alias ga='git add'
alias gc='git commit'
alias gcl='git clone'
alias gd='git diff'
alias gl='git log'
alias gp='git push'
alias gpl='git pull'
alias gs='git status'

# ---  ---
alias c='clear'
alias grep='ack-grep'

# ----------------------------
# --- For Ubuntu --
# ----------------------------
if [ -e /etc/os-release ]; then
	if [ `grep -i 'NAME="Ubuntu"' /etc/os-release` ]; then
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

