
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

# --- tree ---
alias tree='tree -C'

# --- cd ---
alias c='\cd'
alias up='\cd ..'
alias u='up'
alias home='\cd ~'
alias cdsave='__FGKEN_SAVE_CD__=`pwd`'
alias cds='cdsave'
alias cs='cdsave'
__FGKEN_SAVE_CD__=~
cdload() { if [ "$1" == "" ]; then \cd $__FGKEN_SAVE_CD__; else \cd $1; fi;}
alias cdl='cdload'
alias cd='cdload'
# Todo: impl cds1, cds2, ...
# Todo: impl cd1, cd2, ...
# Todo: impl 'cdlist' to list cds1, cd2, ...

# --- etc ---
alias cl='clear'
alias grep='ack'
alias g='ack'
alias p='ps aux'
alias t='tmux'
alias tls='tmux ls'
alias ta='tmux attach -t'
alias v='vim'
__FGKEN_SEPARATE_CNT__=0
alias n='echo -e "--- END ---------------------------------------";
		 echo -e "\n\n\n\n\n\n\n\n";
		 echo -e "=== BEGIN[$__FGKEN_SEPARATE_CNT__] =====================================";
		 __FGKEN_SEPARATE_CNT__=`expr $__FGKEN_SEPARATE_CNT__ + 1`;'


# ----------------------------
# --- For RHEL-based ---
# ----------------------------
if [ -e /etc/redhat-release ]; then
	alias yi='yum install'
	alias ys='yum search'
	alias yu='yum update'
	alias yp='yum provides'
	alias ye='yum erase'
fi

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
		alias g='ack-grep'
	fi
fi

# ----------------------------
# ---  --
# ----------------------------
if [ "$TMUX" = "" ]; then
	tmux
fi

