" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Set language
language en_GB

" Set color
colorscheme slate

" Let's try using jk for esc
inoremap jk <Esc>`^
xnoremap jk <Esc>`^

" Set leader to space
let mapleader = "\<Space>"

" Use spacespace for switching between last 2 files
nnoremap <leader><Space> <c-^>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" Plugins
" Plugin manager: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffers<cr>
Plug 'airblade/vim-rooter'

" GUI
Plug 'itchyny/lightline.vim'

call plug#end()

filetype plugin indent on
"Show tab as 4 spaces
set tabstop=4
set shiftwidth=4
