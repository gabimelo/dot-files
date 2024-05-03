# TODO add conditionals based on OS

# TODO add symlinking of config files

sudo apt-get install vim tmux jq tree xclip htop neovim

mkdir ~/Projects

 # vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# diff-so-fancy
git clone https://github.com/so-fancy/diff-so-fancy ~/.diff-so-fancy
chmod +x ~/.diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RF"
git config --global interactive.diffFilter "diff-so-fancy --patch"

# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# TODO add these:
# FZF
# pyenv
# pyenv virtualenv + set up with nvim (pip install neovim)
# pip-tools
# pre-commit
