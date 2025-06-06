alias nv=nvim

alias gdwn="git diff -- . ':(exclude)*.ipynb'"
alias ys="yarn start"
alias jn="jupyter notebook"
alias jl="jupyter lab"
alias ca="conda activate"
alias jup_lab_ext="conda install -c conda-forge nodejs && jupyter labextension install @jupyterlab/toc && jupyter labextension install @krassowski/jupyterlab_go_to_definition"

alias zsh_update='source ~/.zshrc'
alias zsh_edit='nvim ~/.zshrc'
alias aliases_edit='nvim $ZSH_CUSTOM/custom_aliases.zsh'

alias copy='xclip -sel clip'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias grepr='grep -r --exclude=\*.pyc --exclude=\*.csv --exclude="**/.mypy_cache/**" --exclude-dir=.dvc --exclude-dir=.pytest-cache'
alias t="tree -I '__pycache__'"
alias wk="workon"

alias freeze='pip freeze > requirements.txt'

alias aws="docker run --rm -it --network=host -v ~/.aws:/root/.aws amazon/aws-cli"

# git spice
# alias gss="gs repo sync; gs stack restack; gs stack submit"
