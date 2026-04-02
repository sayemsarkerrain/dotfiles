"" keymaps

" Leader key 
let mapleader = " "

" Esc to normal mode 
set timeoutlen=300
inoremap jk <Esc>

" Tab
nnoremap tg :tabprevious<CR>

" Horizontal, vertical splits and navigation
nnoremap <leader>sh :split<CR>
nnoremap <leader>sv :vsplit<CR>

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

"" Options

" General 
set nocompatible
syntax on
set hidden

" UI
set number
set relativenumber
set showcmd
set wildmenu
set title

" Search 
set ignorecase
set smartcase
set hlsearch
set incsearch

" Splits 
set splitbelow
set splitright

" Wrapping 
set wrap
set linebreak
set breakindent
set nolist

" Language
set encoding=utf-8
set fileencoding=utf-8

" Indentation 
set expandtab
set smartindent

set tabstop=2
set softtabstop=2
set shiftwidth=2

set breakindent
set breakindentopt=shift:2

let g:markdown_recommended_style = 0
autocmd FileType markdown setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2

" Spell
set clipboard=unnamedplus
set spell
set spelllang=en_us
set spellsuggest=best,4

" Template
autocmd BufNewFile *.md execute "normal! i---\ncreated: " . strftime("%Y-%m-%dT%H:%M") . "\n---\n"

"" Plugins

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" fzf.vim
nnoremap <leader><leader> :Files<CR>
nnoremap <leader>b        :Buffers<CR>
nnoremap <leader><Enter>  :Rg<CR>

let g:fzf_layout = { 'down': '40%' }
