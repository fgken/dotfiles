# ----------------------------
# --- Install applications ---
# ----------------------------
INSTALL_CMD="yum install"
APPS_CUI="vim tmux wget curl sl tree xsel ack git tig ruby"
#APPS_GUI="chromium-browser ibus-mozc"

# xsel: for copy command by tmux

# --- For Ubuntu ---
if [ -e /etc/os-release ]; then
	if [ `\grep -i 'NAME="Ubuntu"' /etc/os-release` ]; then
		INSTALL_CMD="sudo apt-get install"
		APPS_CUI=`echo $APPS_CUI | sed -e "s/ack/ack-grep/g"`
	fi
fi

APPS="${APPS_CUI} ${APPS_GUI}"

echo "=== Install Applications ==="
echo $APPS | sed -e "s/ /\n/g"
echo "============================"

echo -n "Install?(y/n):"
read YESNO

if [ $YESNO != "y" ]; then
	echo "Failed."
	exit
fi

echo "${INSTALL_CMD} ${APPS}"
$INSTALL_CMD $APPS



# ----------------------------
# --- Application settings ---
# ----------------------------
echo "=== Setting ==="
git config --global color.ui auto

# Memo
# Sublime 3
# - IMESupport(For Win) or SublimeMozcInput(For Linux)
#
#	"installed_packages":
#	[
#		"Codecs33",
#		"ConvertToUTF8",
#		"Package Control",
#		"SublimeMozcInput"
#	],
#	"repositories":
#	[
#		"https://github.com/yasuyuky/SublimeMozcInput"
#	]
#
# - Build system
#	latex
#	{
#		"cmd": ["platex", "$file"],
#		"cmd": ["dvipdfmx", "$file_base_name.dvi"],
#		"cmd": ["evince", "$file_base_name.pdf"],
#	}


# For buildig qemu
# apti zlib1g-dev libglib2.0-dev

# build-essential
# nasm

# haskell-platform

# gdb
