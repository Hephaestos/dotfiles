syntax on

set t_kb=
set nocompatible
set backspace=eol,indent,start
set autoindent
set smartindent

" don't highlight the last search upon startup
set viminfo="h"

" Do C-style auto indentation on C/C++/Perl files only :)
:filetype on
:autocmd FileType c,cpp,perl :set cindent

" stop Vim from beeping all the time
set vb

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
syntax enable
set ruler
set background=dark


set noshowmode	"Tell you if you are in insert mode

set showmatch	"Match parenthesis, i.e. ) with (  and } with {
set incsearch
set ignorecase	"Ignore case when doing searches
set smartcase

set report=0	"Tell you how many lines have been changed

set scrolloff=5
set wildmode=longest,list
set incsearch
set hlsearch

let g:solarized_termcolors=256
let g:rehash256 = 1
"colorscheme molokai

set showtabline=2

"Pro gamer line numbers
set relativenumber
set number
set cursorline

"Fuzzy file search
set path+=**
set wildmenu

"Tag finding. this builds the tag file
command! MakeTags !ctags -R .

"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'		"Syntax Highlighting
Plug 'scrooloose/syntastic'		"Syntax Checker
Plug 'Raimondi/delimitMate'		"Autoclose and indent
"Plug 'powerline/powerline'		"POWERLINE!
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'		"Adds actions for surrounding (s)
Plug 'tpope/vim-commentary'		"Adds actions for commenting out lines (gc)
Plug 'scrooloose/nerdtree'		"File Tree
Plug 'vimwiki/vimwiki'			"Vim Wiki
Plug 'ryanoasis/vim-devicons'	"Icons
Plug 'arcticicestudio/nord-vim'	"Icons

call plug#end()

colorscheme nord

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_theme = 'base16'
	
"For devicons
set encoding=UTF-8

"Gets YCM/TabNine out of the way of Syntastic
let g:ycm_show_diagnostics_ui = 0

"Keeps YCM/TabNine from intercepting Up and Down
let g:ycm_key_list_select_completion = ['<TAB>']
inoremap <silent><Down> <C-R>=pumvisible() ? "\<lt>C-y>\<lt>Down>" : "\<lt>Down>"<CR>
let g:ycm_key_list_select_previous_completion = ['<S-Tab>']
inoremap <silent><Up> <C-R>=pumvisible() ? "\<lt>C-y>\<lt>Up>" : "\<lt>Up>"<CR>

"Keeps me from being a noob
nnoremap <Left> :echo "ಠ_ಠ"<CR>
nnoremap <Right> :echo "ಠ_ಠ"<CR>
nnoremap <Up> :echo "ಠ_ಠ"<CR>
nnoremap <Down> :echo "ಠ_ಠ"<CR>

nnoremap <C-q> :term<CR> 
nnoremap <C-Q> :vert term<CR> 

set statusline+=&#warningmsg#
set statusline+=&{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'

let g:delimitMate_expand_cr = 2
let g:delimitMate_balance_matchpairs = 1

"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
"set laststatus=2

"C-n opens nerdtree
map <C-n> :NERDTreeToggle<CR>
"Closes vim if only NERDTree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"folding
set foldmethod=syntax   
set foldnestmax=10
set nofoldenable
set foldlevel=2

"Handy Things
nnoremap <space> :nohlsearch<CR>
nnoremap ; :
nnoremap <F2> :set tabstop=2 <bar> set noexpandtab <bar> %retab! <bar> set tabstop=4<CR>
