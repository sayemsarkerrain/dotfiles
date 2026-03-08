" #########
" keymaps
" #########
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

" keymaps.vim, options.vim and plugins.vim
nnoremap <leader>1 :e ~/.config/vim/keymaps.vim<CR>
nnoremap <leader>2 :e ~/.config/vim/options.vim<CR>
nnoremap <leader>3 :e ~/.config/vim/plugins.vim<CR>

" #########
" Options
" #########
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

" Indentation 
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
let g:markdown_recommended_style = 0
autocmd FileType markdown setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2

" Spell
set clipboard=unnamedplus
set spell
set spelllang=en_us
set spellsuggest=best,4

" Template
autocmd BufNewFile *.md execute "normal! i---\ncreated: " . strftime("%Y-%m-%dT%H:%M") . "\n---\n"

" #########
" Plugins
" #########
" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/autocomplpop'

call plug#end()

" fzf.vim
nnoremap <leader><leader> :Files<CR>
nnoremap <leader>b        :Buffers<CR>
nnoremap <leader><Enter>  :Rg<CR>

let g:fzf_layout = { 'down': '40%' }

" AutoComplPop
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

highlight Pmenu      ctermfg=white ctermbg=black guifg=#ffffff guibg=#000000
highlight PmenuSel   ctermfg=white ctermbg=236 cterm=bold guifg=#ffffff guibg=#303030 gui=bold
highlight PmenuSbar  ctermbg=236 guibg=#303030
highlight PmenuThumb ctermbg=250 guibg=#bcbcbc
