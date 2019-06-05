"##### general config #####
set nocompatible
set fenc=utf-8

set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set clipboard=unnamed

"SHOW
set number
set ruler
set cursorline
set cursorcolumn
set title
set showmatch
syntax on
colorscheme molokai
set t_Co=256
set termguicolors
set background=dark
set smartindent

"SEARCH
set hls
set ignorecase
set smartcase
set wrapscan
set incsearch
set inccommand=split

"CURSOR MOVE
set backspace=indent,eol,start
set scrolloff=8
set sidescrolloff=16
set sidescroll=1
set whichwrap=b,s,h,l,<,>,[,]

"ENV
set shellslash
set mouse=a

"BEEP
set visualbell t_vb=
set noerrorbells

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
     execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  let g:rc_dir    = expand("~/.config/nvim")
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif


"KEY_CONFIG
"=====================
"MOVE
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"SPLIT MOVE
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"COMPLETION
inoremap <Tab> <C-p>

