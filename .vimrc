" Basic settings
set nocompatible
filetype plugin indent on
syntax on
set hidden
set clipboard=unnamedplus

" Line numbers, showcmd, wildmenu
set number
set relativenumber
set showcmd 
set wildmenu

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" Split behaviour
set splitbelow   
set splitright

" Wrapping and indentation
set wrap
set linebreak
set breakindent
set breakindentopt=shift:2,min:20
set nolist
set expandtab
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
autocmd FileType * setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2

" Spell checker
set spell
set spelllang=en
set spellsuggest=best,4

" Leader and mapping
let mapleader = " "
set timeoutlen=300
inoremap jk <Esc>

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/AutoComplPop'

call plug#end()

" fzf.vim configuration
nnoremap <leader><leader> :Files<CR>
nnoremap <leader>b        :Buffers<CR>
nnoremap <leader><Enter>  :Rg<CR>

" AutoComplPop configuration
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
highlight Pmenu      ctermfg=white ctermbg=black guifg=#ffffff guibg=#000000
highlight PmenuSel   ctermfg=white ctermbg=236 cterm=bold guifg=#ffffff guibg=#303030 gui=bold
highlight PmenuSbar  ctermbg=236 guibg=#303030
highlight PmenuThumb ctermbg=250 guibg=#bcbcbc
