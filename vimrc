set nocompatible                    " be iMproved, required
filetype off                        " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on           " required


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

set laststatus=2		                " enable status bar
set number			                    " show line number
set ruler		                	      " show cursor
set hlsearch			                  " highlight search result
set cursorline			                " highlight current line
set cursorcolumn		                " hightlight current column
set nowrap			                    " disable wrap line
set tabstop=2			                  " space number for tab
set shiftwidth=2		                " space number when format
set shiftround			                " set shiftround
set expandtab			                  " convert tab to space
set softtabstop=2                   " make 2 spaces as one tab
set matchpairs+=<:>                 " enable pair match
set showcmd                         " dispaly incomplete commands
set fileencodings=utf-8             " set file encoding

" NERDTree plugin setting
nmap <F8> :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Ctags setting
let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" Tagbar plugin setting
nmap <F9> :TagbarToggle<CR>
let g:tagbar_width=32
let g:tagbar_autofocus=1
let g:tagbar_compact=1
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
