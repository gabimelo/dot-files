# TODO add conditionals based on OS
# TODO add symlinking of config files

## mac

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# echo >> /Users/gabimelo/.zprofile
# echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/gabimelo/.zprofil
# eval "$(/opt/homebrew/bin/brew shellenv)"
brew install tmux tree htop neovim fzf git-spice git-delta gh pyenv pyenv-virtualenv fd ripgrep fnm

## ubuntu
# sudo apt-get install vim tmux jq tree xclip htop neovim fzf
# curl https://pyenv.run | bash

# generics

mkdir ~/src
cp -r nvim ~/.config/
cp conf/.tmux.conf ~/
echo '
[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true  # use n and N to move between diff sections
    dark = true      # or light = true, or omit for auto-detection

[merge]
    conflictstyle = zdiff3

[diff]
    colorMoved = default' >> .gitconfig

# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# pyenv
# use it like:
# pyenv install 3.13
# pyenv virtualenv 3.13 neovimpy13
# pyenv activate neovimpy13
