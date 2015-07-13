set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on    " required


" set leader key
let mapleader=";"
" set key map
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Enable solarized color
syntax enable
set background=dark
colorscheme solarized
let g:Powerline_colorscheme='solarized256'

set laststatus=2		          " enable status bar
set number			              " show line number
set ruler		                	" show cursor
set hlsearch			            " highlight search result
set cursorline			          " highlight current line
set cursorcolumn		          " hightlight current column
set nowrap			              " disable wrap line
set tabstop=2			            " space number for tab
set shiftwidth=2		          " space number when format
set shiftround			          " set shiftround
set expandtab			            " convert tab to space
set softtabstop=2             " make 2 spaces as one tab
set matchpairs+=<:>           " enable pair match

" set NERDTree plugin
nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

