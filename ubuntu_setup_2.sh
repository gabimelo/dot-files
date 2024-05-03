# TODO add conditionals based on OS

# Make sure runnning on ZSH
if [[ ! $SHELL =~ "/usr/bin/zsh" ]]; then
	echo "Not running on Zsh"
	exit
fi

# Basics
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install curl git

# Oh My Zsh
# .zshrc available at same GitHub repo as this script
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
