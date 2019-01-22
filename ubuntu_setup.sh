# Assuming Chrome was already manually installed...

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

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# Anaconda --> manually download and then bash Anaconda-latest-Linux-x86_64.sh
