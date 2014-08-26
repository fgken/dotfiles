
# ----------------------------
# --- alias --
# ----------------------------

# --- git ---
alias ga='git add'
alias gc='git commit'
alias gcl='git clone'
alias gd='git diff'
alias gp='git push'
alias gpl='git pull'
alias gs='git status'

# ----------------------------
# --- For Ubuntu --
# ----------------------------
if [ -e /etc/os-release ]; then
	if [ `cat /etc/os-release | grep -i 'NAME="Ubuntu"'` ]; then
		alias apti='apt-get install'
		alias apts='apt-cache search'
	fi
fi

# ----------------------------
# ---  --
# ----------------------------
if [ "$TMUX" = "" ]; then
	tmux
fi

