" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:

NeoBundle 'bling/vim-airline'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-surround'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'groenewege/vim-less'
NeoBundle 'othree/html5.vim'

"Themes
NeoBundle 'reedes/vim-thematic'
NeoBundle 'gruvbox'
NeoBundle '29decibel/codeschool-vim-theme'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'w0ng/vim-hybrid'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

let g:thematic#themes = {
\ 'bubblegum'  : {
\                },
\ 'jellybeans' : { 'laststatus': 0,
\                  'ruler': 1,
\                },
\ 'pencil_dark' :{'colorscheme': 'pencil',
\                 'background': 'dark',
\                 'airline-theme': 'badwolf',
\                 'ruler': 1,
\                },
\ 'pencil_lite' :{'colorscheme': 'pencil',
\                 'background': 'light',
\                 'airline-theme': 'light',
\                 'ruler': 1,
\		 },
\ 'hybrid'	:{'colorscheme': 'hybrid',
\		  'background': 'dark',
\		  'airline-theme': 'badwolf',
\		  'laststatus': 2,
\		  'ruler': 1,
\                },
\ 'gruvbox'	:{'colorscheme': 'gruvbox',
\		  'background': 'dark',
\		  'airline-theme': 'tomorrow',
\		  'laststatus': 2,
\		  'ruler': 1,
\                },
\ }

let g:thematic#theme_name = 'hybrid'

syntax enable " Turn on syntax highlighting

set hidden " When you open a new file the buffer of the current file is hidden instead of closed

set history=100 " vim saves your last 100 commands (instead of 8)

set number " show line numbers

inoremap jj <ESC>

let mapleader = ","
map <leader>rr :source ~/.vimrc<cr>
map <leader>ne :NERDTree<cr>
map <leader>tg :TagbarToggle<cr>

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
