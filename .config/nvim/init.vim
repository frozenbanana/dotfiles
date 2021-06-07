" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree' " See all undoes in a tree :UndoTreeToggle
Plug 'neoclide/coc.nvim', {'branch': 'release'} " completion engine a la vscode
Plug 'christoomey/vim-tmux-navigator' " Seamless vimlike navigation in vim and tmux 

" Initialize plugin system
call plug#end()
source ~/.config/nvim/plug-config/coc.vim
source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/plug-config/vim-tmux-navigator.vim
source ~/.config/nvim/remapped-config/keybindings.vim


" Sane defaults
syntax on     " attempt to highlight syntax
set noerrorbells " no error bell when end of line
set number    " number lines
set smarttab  " 
set expandtab " put spaces in tabs
set cindent   " 
set smartcase " case insensitive search until I start to use a capital letter
set noswapfile " No .swap please
set nobackup   " 
set undodir=~/.vim/undodir
set undofile
set tabstop=4 softtabstop=4
set shiftwidth=4
set incsearch " give me results while typing

" always uses spaces instead of tab characters
set expandtab
" Set encoding for nerdtree devicons
set encoding=UTF-8

if (has("termguicolors"))
 set termguicolors
endif
colorscheme dracula
