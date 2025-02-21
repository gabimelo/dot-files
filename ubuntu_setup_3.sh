# TODO add conditionals based on OS

# TODO add symlinking of config files

sudo apt-get install vim tmux jq tree xclip htop neovim fzf

mkdir ~/Projects
mkdir ~/src

 # vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nvim config
mkdir -p ~/.config/nvim
cp conf/init.vim ~/.config/nvim/init.vim

# tmux conf
cp conf/.tmux.conf ~/

# TODO git spice

# TODO switch to delta
# diff-so-fancy
git clone https://github.com/so-fancy/diff-so-fancy ~/.diff-so-fancy
chmod +x ~/.diff-so-fancy
# do I need to export PATH=$PATH:~/.diff-so-fancy ?
git config --global core.pager "diff-so-fancy | less --tabs=4 -RF"
git config --global interactive.diffFilter "diff-so-fancy --patch"

# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# pyenv
curl https://pyenv.run | bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
source ~/.zshrc
pyenv install 3.13
pyenv virtualenv 3.13 neovimpy13
pyenv activate neovimpy13
pip install neovim typing-extensions jedi
