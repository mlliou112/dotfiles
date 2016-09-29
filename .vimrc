""""""""""""""""""
"  Vundle Stuff  "
""""""""""""""""""
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'commentary.vim'
Plugin 'ctrlp.vim'
Plugin 'surround.vim'

" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"
" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""
"  General Settings  "
""""""""""""""""""""""

set backspace=indent,eol,start
syntax on
set mouse=a
set incsearch
set ignorecase
set smartcase
set laststatus=2
set wildmenu
set clipboard=unnamed
set expandtab
set softtabstop=4
set tabstop=4

" Moving line shortcut
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


""""""""""""""""""
"  Autocommands  "
""""""""""""""""""

augroup AutoSaveFolds
    au BufWinLeave *.* mkview
    au BufWinEnter *.* silent loadview
augroup END

augroup WhiteSpace
    au FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2
    au FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
    au BufNewFile,BufRead *.py
		\set tabstop=4
		\set softtabstop=4
		\set shiftwidth=4
		\set textwidth=79
		\set expandtab
		\set autoindent
		\set fileformat=unix
augroup END

augroup QuickBuild
    au FileType python nnoremap <F4> :w<CR>:!python %<CR>
    au FileType cpp nnoremap <F4> :w<CR>:make<CR>
    au FileType html nnoremap <F4> :w<CR>:!open %<CR>
augroup END

""""""""""""""""""""""
"  Airline Settings  "
""""""""""""""""""""""
" Song detection from Itunes and Spotify, makes new section
set noshowmode
let g:airline#extensions#default#layout = [
			\ ['a', 'b', 'c'],
			\ ['w', 'x', 'y', 'z', 'error', 'warning']
			\ ]

let g:airline#extensions#default#section_truncate_width = {
			\ 'b': 79,
			\ 'w': 120,
			\ 'x': 60,
			\ 'y': 88,
			\ 'z': 45,
			\ 'warning': 80,
			\ 'error': 80,
			\ }


let g:airline_section_w = systemlist("/Users/mliou/.vim/custom_scripts/currentsong.sh")[0]
autocmd CursorHold,CursorHoldI * let g:airline_section_w=systemlist("/Users/mliou/.vim/custom_scripts/currentsong.sh")[0] | AirlineRefresh


