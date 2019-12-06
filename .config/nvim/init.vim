"Pro gamer line numbers
set relativenumber
set number
set cursorline

"Colors and Theme
set background=dark
let g:solarized_termcolors=256
let g:rehash256 = 1
:colorscheme molokai

"Search Settings
set incsearch
set ignorecase
set smartcase
set wildmode=longest,list
set incsearch
set hlsearch
set path+=**
set wildmenu
nnoremap <space> :nohlsearch<CR> "Use space to un-higlight search

"Command to build tag file
command! MakeTags !ctags -R .

"VimPlug Plugin Manager
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'		"Syntax Highlighting
Plug 'scrooloose/syntastic'		"Syntax Checker
Plug 'Raimondi/delimitMate'		"Autoclose and indent
Plug 'powerline/powerline'		"POWERLINE!
Plug 'tpope/vim-surround'		"Adds actions for surrounding (s)
Plug 'tpope/vim-commentary'		"Adds actions for commenting out lines (gc)
Plug 'zxqfl/tabnine-vim'		"Deep Learning Autocompletion
Plug 'scrooloose/nerdtree'		"File Tree
Plug 'ryanoasis/vim-devicons'		"Icons

call plug#end()

"Airline Settings
let g:airline#extensions#tabline#enabled = 1 " Show tabline at top
let g:airline_powerline_fonts = 1 " Cool arrow things
let g:airline_theme='powerlineish'

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the defau"For devicons

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
