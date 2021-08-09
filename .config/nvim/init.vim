let g:coc_global_extensions = [
\ 'coc-ultisnips',
\ 'coc-json',
\ 'coc-tsserver',
\ 'coc-html',
\ 'coc-css',
\ 'coc-yaml',
\ 'coc-highlight',
\ ]


" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree' " See all undoes in a tree :UndoTreeToggle
Plug 'neoclide/coc.nvim', {'branch': 'release'} " completion engine a la vscode
Plug 'christoomey/vim-tmux-navigator' " Seamless vimlike navigation in vim and tmux 
Plug 'mattn/emmet-vim' " Emmet for vim
Plug 'SirVer/ultisnips' " Snippets
Plug 'mlaursen/vim-react-snippets' " Snippets for react
Plug 'tpope/vim-fugitive' " Git integration
Plug 'itchyny/lightline.vim'  " statusbar
Plug 'itchyny/vim-gitbranch'  " Add gitbranch to statusbar
Plug 'urbainvaes/vim-ripple' " Send to REPL
Plug 'machakann/vim-highlightedyank' " Highlights yanks
Plug 'airblade/vim-gitgutter' " See lines that are new

" Initialize plugin system
call plug#end()

source ~/.config/nvim/plug-config/coc.vim
source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/plug-config/vim-tmux-navigator.vim
source ~/.config/nvim/plug-config/emmet.vim
source ~/.config/nvim/plug-config/lightline.vim
source ~/.config/nvim/plug-config/highlightedyank.vim
source ~/.config/nvim/remapped-config/keybindings.vim
source ~/.config/nvim/remapped-config/custom-functions.vim


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
set tabstop=2 softtabstop=2
set shiftwidth=2
set incsearch " give me results while typing
set splitbelow " split land below when horizontal split
set splitright " split land right when vertial split
set statusline+=%F " Show path from current working directory CDC
set cmdheight=1

" always uses spaces instead of tab characters
set expandtab
" Set encoding for nerdtree devicons
set encoding=UTF-8
" Tree view for netrw
let g:netrw_liststyle=3

if (has("termguicolors"))
 set termguicolors
endif
colorscheme dracula

