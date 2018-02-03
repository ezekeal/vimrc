call plug#begin('~/.vim/pluggged')

" standard defaults
Plug 'tpope/vim-sensible'

" Synax
Plug 'vim-syntastic/syntastic'

" auto close braces
Plug 'Raimondi/delimitMate'

" Languages
Plug 'rust-lang/rust.vim'

" Colors
Plug 'rakr/vim-one'

call plug#end()

" 2 spaces instead of tabs
set tabstop=2 shiftwidth=2 expandtab

" allow all the colors
set termguicolors
syntax on

" set colorscheme
colorscheme one

" auto indent when hitting enter on closing brace
let delimitMate_expand_cr=1
