" vimrc
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'itchyny/lightline.vim'

" Colorscheme Name: solarized
NeoBundle 'altercation/vim-colors-solarized'
" Colorscheme Name: mustang
NeoBundle 'croaker/mustang-vim'
" Colorscheme Name: wombat
NeoBundle 'jeffreyiacono/vim-colors-wombat'
" Colorscheme Name: jellybeans
NeoBundle 'nanotech/jellybeans.vim'
" Colorscheme Name: lucius
NeoBundle 'vim-scripts/Lucius'
" Colorscheme Name: zenburn
NeoBundle 'vim-scripts/Zenburn'
" Colorscheme Name: mrkn256
NeoBundle 'mrkn/mrkn256.vim'
" Colorscheme Name: railscasts
NeoBundle 'jpo/vim-railscasts-theme'
" Colorscheme Name: pyte
NeoBundle 'therubymug/vim-pyte'
" Colorscheme Name: molokai
NeoBundle 'tomasr/molokai'

" Colorscheme : Use listing Unite.vim
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

" vim filer
NeoBundle 'scrooloose/nerdtree'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" User configurations
set t_Co=256

set title
set number
set cursorline
set cursorcolumn

set history=100

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=0

set smartindent
set noautoindent

set nrformats-=octal
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set autoread
set ambiwidth=double
set nostartofline
set incsearch
set wrapscan
set showmatch
set hlsearch
set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=%y
set statusline+=%=

" file encoding
set statusline+=[ENC=%{&fileencoding}]
set statusline+=[LOW=%l/%L]
"
set cmdheight=1
set showcmd
set laststatus=2
set statusline+=%{matchstr(hostname(),'\\w\\+')}@

" let g:lightline = {
" \ 'colorscheme': 'molokai',
" \ }

let g:airline_theme='hybrid'

syntax on
filetype plugin on
filetype indent on

colorscheme molokai

map <C-n> :NERDTreeToggle<CR>
