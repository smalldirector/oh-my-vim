" Load Vundle plugin setting
set nocompatible                              " be iMproved, required
filetype off                                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on                     " required

" Keymap setting
let mapleader = "\<Space>"
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nnoremap <Leader>h <C-W>h
nnoremap <Leader>j <C-W>j
nnoremap <Leader>k <C-W>k
nnoremap <Leader>l <C-W>l

" Theme setting
syntax enable
let g:solarized_termcolors=256
set t_Co=256 
set background=dark
colorscheme solarized

set number                                    " show line number
set ruler                                     " show cursor
set hlsearch                                  " highlight search result
set cursorline                                " highlight current line
set cursorcolumn                              " hightlight current column
set nowrap                                    " disable wrap line
set tabstop=2                                 " space number for tab
set shiftwidth=2                              " space number when format
set shiftround                                " set shiftround
set expandtab                                 " convert tab to space
set softtabstop=2                             " make 2 spaces as one tab
set matchpairs+=<:>                           " enable pair match
set showcmd                                   " dispaly incomplete commands
set fileencodings=utf-8                       " set file encoding
set laststatus=2                              " enable status bar

" Airline plugin setting
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Airline tab(MiniBufExplorer) setting
map <Leader>bu :MBEToggle<cr>
map <Tab> :bn<cr>
map <c-Tab> :bp<cr>

" Syntastic plugin setting
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

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

" CtrlP plugin setting
let g:ctrlp_map = '<c-p>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" vim-go plugin setting
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>d <Plug>(go-def)
au FileType go nmap <Leader>sd <Plug>(go-def-split)
au FileType go nmap <Leader>vd <Plug>(go-def-vertical)
au FileType go nmap <Leader>td <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 0
let g:go_play_open_browser = 0
