set nocompatible
filetype plugin indent on
syntax on

set number
set relativenumber
set showcmd 
set wildmenu

set wrap
set linebreak
set breakindent
set breakindentopt=shift:2,min:20
set nolist

set tabstop=2
set shiftwidth=1
set expandtab
set smartindent

set hidden
set clipboard=unnamedplus
set splitbelow   
set splitright
set ignorecase
set smartcase

set spell
set spelllang=en
set spellsuggest=best,4

let mapleader = " "
set timeoutlen=300
inoremap jk <Esc>

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/AutoComplPop'

call plug#end()

nnoremap <leader><leader> :Files<CR>
nnoremap <leader>b        :Buffers<CR>
nnoremap <leader><Enter>  :Rg<CR>
let g:fzf_layout = { 'down': '40%' }  

set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
highlight Pmenu      ctermfg=white ctermbg=black guifg=#ffffff guibg=#000000
highlight PmenuSel   ctermfg=white ctermbg=236 cterm=bold guifg=#ffffff guibg=#303030 gui=bold
highlight PmenuSbar  ctermbg=236 guibg=#303030
highlight PmenuThumb ctermbg=250 guibg=#bcbcbc
