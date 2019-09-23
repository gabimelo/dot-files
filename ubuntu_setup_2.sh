sudo apt-get install vim tmux jq tree xclip

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
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# Anaconda --> manually download and then bash Anaconda-latest-Linux-x86_64.sh

mkdir ~/Projects
