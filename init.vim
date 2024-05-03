" .config/nvim/init.vim
" https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/

call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'lewis6991/gitsigns.nvim', {'tag': 'v0.5'}
" Plug 'machakann/vim-sandwich', {'branch': 'master'}
Plug 'hashvim/vim-terraform'
Plug 'github/copilot.vim'

call plug#end()

let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('sources', {'python': ['jedi', 'neosnippet']})

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

let g:airline_theme='night_owl'

colorscheme gruvbox
set background=dark " use dark mode
" set background=light " uncomment to use light mode

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" set splitbelow  " configure deoplete method preview to open below

nmap ,e :Files<CR>
nmap <silent> <C-D> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

let g:python3_host_prog = '/home/gabriela/.pyenv/versions/neovimpy11/bin/python'

" let g:sandwich#recipes = deepcopy(g:sandwich#default_recipe)

lua << EOF
	require('gitsigns').setup()
EOF

set clipboard=unnamedplus
