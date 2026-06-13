"Code color
syntax on
set hls
set t_Co=256
set bg=dark
colorscheme zaibatsu

"Tabulation
set autoindent
set cindent
set showmatch
set list
set listchars=tab:>\ ,trail:*
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"Visual
set showmode
set ruler
set timeoutlen=500
set ttimeoutlen=10
"set mouse=a

"Errors
set novisualbell
set noerrorbells

"Search
set incsearch
set ignorecase
set smartcase

"Files
set nobackup
set noswapfile
set nowritebackup
set autoread
set fileencodings=utf-8

"Commands
let g:mapleader = " "
nnoremap <Leader>n :nohlsearch<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
inoremap nn <ESC>

