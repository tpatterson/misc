set nocompatible " disable vi settings

set bs=2		        " allow backspacing over everything in insert mode
set ai			        " always set autoindenting on
set nobackup	        " don't keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			            " than 50 lines of registers
set history=50		    " keep 50 lines of command line history
set ruler		        " show the cursor position all the time
set nowrap              " make sure that long lines don't wrap
set laststatus=2        " Make sure the status line is always displayed
filetype plugin on

set scrolloff=5        " Keep at least this many lines above and below the cursor.

" Switch syntax highlighting on
syntax enable

" Display bufnr:filetype (dos,unix,mac) in status line
set statusline=%<%n:%f%h%m%r%=%{&ff}\ %l,%c%V\ %P

" Hide the mouse pointer while typing
" The window with the mouse pointer does not automatically become the active window
" Right mouse button extends selections
" Turn on mouse support
set mousehide
set nomousefocus
set mousemodel=extend
set mouse=a
set mouse=nicrv " everything but 'v' for visual mode.

" Show paren matches
" For 5 tenths of a second
set showmatch
set matchtime=5

"set textwidth=78
set smarttab
set shiftround
set expandtab

" Setup auto wrapping

" Setup indenting
set autoindent

map <F2> :BufExplorer<CR>
map <F12> :Project<CR>

set hidden

set noequalalways
set dir=~/.vim/swap
set nobackup writebackup
set t_Co=256
"colorscheme desert256

set colorcolumn=100
set number
set ignorecase
set textwidth=0

" Setup tabs for 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set wrap

set clipboard=unnamed
