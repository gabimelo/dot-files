sudo apt-get install vim tmux jq tree xclip htop neovim

mkdir ~/Projects

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/so-fancy/diff-so-fancy ~/.diff-so-fancy
chmod +x ~/.diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RF"
git config --global interactive.diffFilter "diff-so-fancy --patch"

# check latest docs to install and set up
# FZF
# pyenv
# pyenv virtualenv + set up with nvim (pip install neovim)
# pip-tools
# pre-commit
