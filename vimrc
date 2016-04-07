set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

""""""""
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" A tree explorer plugin for vim
Plugin 'scrooloose/nerdtree'

" Plugin 'Lokaltog/vim-powerline'

" visually displaying indent levels
Bundle 'nathanaelkane/vim-indent-guides'

" git integration
Bundle 'motemen/git-vim'

" Airline
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

" Autoclose, e.g. brakets
Bundle 'Townk/vim-autoclose'

" Paint css colors with the real color
Bundle 'lilydjwg/colorizer'

" Sublime Text style multiple selections for Vim
Bundle 'terryma/vim-multiple-cursors'

" Scala syntax highlight, https://github.com/derekwyatt/vim-scala
Bundle 'derekwyatt/vim-scala'

" Markdown preview
Bundle 'suan/vim-instant-markdown'

""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"## filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:Powerline_symbols = 'unicode'

"execute pathogen#infect()
"call pathogen#helptags()

" syntax highlight on
syntax on

let $LANG='en_US.UTF-8'
set langmenu=en_US.utf-8
set helplang=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" backspace
set backspace=indent,eol,start

" show line numbers
set number

" tabs and spaces handling
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set softtabstop=4

autocmd FileType html setlocal sw=4 ts=4 softtabstop=4
autocmd FileType javascript setlocal sw=4 ts=4 softtabstop=4
autocmd FileType json setlocal sw=4 ts=4 softtabstop=4

" Change mapleader
let mapleader=","

" always show status bar
set ls=2

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Optimize for gast terminal connections
set ttyfast

" Show content after exit vim
"## set t_ti= t_te=

" Jump to last cursor place
autocmd BufReadPost *
    \ if ! exists("g:leave_my_cursor_position_alone") |
    \     if line("'\"") > 0 && line ("'\"") <= line("$") |
    \         exe "normal g'\"" |
    \     endif |
    \ endif

" Centralize bakups, swapfiles and undo history
set backupdir=~/.vim/dirs/backups
set directory=~/.vim/dirs/swaps
if exists("&undodir")
    set undodir=~/.vim/dirs/undo
endif

" Don't create backups when editing files in certain directories
set backupskip=/tmp/*,/priviate/tmp/*

" Show the filename in the window titlebar
set title

" show next # lines
set scrolloff=20

" Show the line and column number of the cursor position
set ruler

" Show command in the last line of the screen
set showcmd

" Ignore the case of letters smartly
set ignorecase
set smartcase

" show vim mode
set showmode

" Use visual bell instead of beeping
set visualbell

" Incemental search
set incsearch

" Highlighted search results
set hlsearch

" Highlight the screen line of the cursor
"## set cursorline
"
" When a bracket is inserted, briefly jump to the matching one.
set showmatch

"set autoindent
"set smartindent

" Lines longer than window will wrap
set wrap

" Enhance command-line completion
set wildmenu

" Disable mouse
set mouse=""

" Set file encoding
set encoding=utf-8 nobomb
set fileencoding=utf-8
set fileencodings=utf-8,chinese,gbk,gb18030,latin-1,ucs-bom,gb18030,gb2312,cp936

" Folding settings
"## set foldmethod=indent

set termencoding=utf-8
set t_Co=256
"## set t_Co=16
set background=dark

" Use the Solarized Dark theme
"## set background=dark
"## colorscheme solarized
"## let g:solarized_termtrans=1

"## colorscheme darkblue
"## colorscheme koehler
"## set background=light
"## if !has('gui_running')
"##     " Compatibility for Terminal
"##     let g:solarized_termtrans=1
"##     " Make Solarized use 16 colors for Terminal support
"##     let g:solarized_termcolors=16
"## endif

" Highlight list of screen columns
"## let &colorcolumn=join(range(121,999),",")
set colorcolumn=80,100,101,120,121,122,123,124

" Highlight mode settings
highlight ColorColumn ctermbg=235
highlight Directory term=none ctermfg=green ctermbg=none

" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" Window movements; I do this often enough to warrant using up M-arrows on
" this"
nnoremap <M-Right> <C-W><Right>
nnoremap <M-Left> <C-W><Left>
nnoremap <M-Up> <C-W><Up>
nnoremap <M-Down> <C-W><Down>
" -----
map <M-Left> <C-W>h
map <M-Right> <C-W>l
map <M-Up> <C-W>k
map <M-Down> <C-W>j

" Open window below instead of above"
nnoremap <C-W>N :let sb=&sb<BAR>set sb<BAR>new<BAR>let &sb=sb<CR>
nnoremap <C-W>= :let sb=&sb<BAR>set sb<BAR>new<BAR>let &sb=sb<CR>

" Vertical equivalent of C-w-n and C-w-N"
noremap <C-w>V :vnew<CR>
"noremap <C-w>V :let spr=&spr<BAR>set nospr<BAR>vnew<BAR>let &spr=spr<CR>
noremap <C-w>v :let spr=&spr<BAR>set spr<BAR>vnew<BAR>let &spr=spr<CR>

" I open new windows to warrant using up C-M-arrows on this"
map <C-M-Up> <C-w>n
map <C-M-Down> <C-w>N
map <C-M-Right> <C-w>v
map <C-M-Left> <C-w>V
nmap ,c :%s///gn

" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query= getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>
ca w!! w !sudo tee "%"

" Use relative line numbers
"## if exists("&relativenumber")
"##     set relativenumber
"##     au BufReadPost * set relativenumber
"## endif

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" Shortcut for insert datetime
nmap <F6> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F6> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" Shortcut for exec python script
au BufRead *.py map <buffer> <F5> :w<CR>:! python % <CR>

" Open markdown files with Chrome.
autocmd BufEnter *.md exe 'noremap <F6> :!open -a "Google Chrome.app" %:p<CR>'

" NERDTree ------------------------------
" Open NERDTree on the right side
let g:NERDTreeWinPos="right"
" Open a NERDTree automatically when vim starts up
"## autocmd vimenter * NERDTree
"## autocmd VimEnter * wincmd p
" Open NERDTree with Ctrl+t
map <C-t> :NERDTreeToggle<CR>
" Do not shhow these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.swap']
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" =======================================

" Autoclose ----------------------------
" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}
" =====================================

" Airline -----------------------------
let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
let g:airline#extensions#whitespace#enabled = 0
" =====================================

" Inddent Guides
"## let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=1
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=4
" hi IndentGuidesOdd  ctermbg=grey
" hi IndentGuidesEven ctermfg=darkgrey

