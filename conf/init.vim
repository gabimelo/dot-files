" .config/nvim/init.vim
" Started from: https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/

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
" Plug 'hashvim/vim-terraform'
Plug 'github/copilot.vim'
Plug 'mechatroner/rainbow_csv'
Plug 'joshdick/onedark.vim'
Plug 'ixru/nvim-markdown'

call plug#end()

" Basic Options

" Make space the <leader>
"let mapleader = " "
"Highlight ruler at column 120
set colorcolumn=120
" Highlight current line
set cursorline
" Show 5 lines above/below cursor
set scrolloff=5
" More ergonomic saving
nmap <silent> <C-S> :w<CR>
" More ergonomic quitting
nmap <silent> <C-Q> :q<CR>
" Move to next buffer
nmap <silent> <C-l> :bnext<CR>
" Move to previous buffer
nmap <silent> <C-h> :bprevious<CR>
" Move to next buffer and close previous
nmap <silent> <leader>l :bnext<bar>bd#<CR>
" Move to previous buffer and close previous
nmap <silent> <leader>h :bprevious<bar>bd#<CR>
" Delete current buffer
nmap <silent> <C-d> :bd<CR>
" Yank to system clipboard
set clipboard=unnamedplus
" turn hybrid line numbers on
:set number relativenumber

" FZF
let g:fzf_history_dir = '~/.local/share/fzf-history'
nmap <space> :Rg<CR>

" NERDTree
nmap ,e :Files<CR>
nmap <silent> <leader>d :NERDTreeToggle<CR>
nmap <silent> <leader>e :NERDTreeFind<CR>
nmap <silent> <leader>b :Buffers<CR>
let NERDTreeShowHidden=1
let g:NERDTreeWinPos='right'

" Copilot
" Alternatively to tab, accept suggestions with C-J
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")

" Deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('sources', {'python': ['jedi', 'neosnippet']})
" disable jedi's autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
" let g:jedi#use_splits_not_buffers = "right"
" configure deoplete method preview to open below
" set splitbelow

" Airline
let g:airline_theme='night_owl'
"let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#tabline#formatter='unique_tail_improved'

" Color theme
colorscheme onedark
"colorscheme gruvbox
"set background=dark " use dark mode
" set background=light " uncomment to use light mode

" Python
let g:python3_host_prog = '/home/gabriela/.pyenv/versions/neovimpy11/bin/python'
" let g:deoplete#sources#jedi#extra_path=""

" Git Signs
lua << EOF
	require('gitsigns').setup()
EOF

" let g:sandwich#recipes = deepcopy(g:sandwich#default_recipe)
