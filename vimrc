" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5
set noswapfile

" Do incremental searching.
set incsearch

" Don't use Ex mode, use Q for formatting.
map Q gq

" Relative line numbers
set relativenumber
set nu

set tabstop=4
set shiftwidth=4
set expandtab

inoremap jk <Esc>

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" My plugins
Plug 'https://github.com/preservim/nerdtree'
            
call plug#end()

" convenient work with NERDTree
inoremap <C-n> <Esc>:NERDTreeToggle<CR>
nnoremap <C-n> <Esc>:NERDTreeToggle<CR>
