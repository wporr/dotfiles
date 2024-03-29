" Inspired by github.com/keur
set nocompatible "Needed by Vundle
filetype off "Needed by Vundle
set rtp+=~/.vim/bundle/Vundle.vim "Add Vundle to runtime path
set rtp+=~/.fzf

call vundle#begin()
  Plugin 'VundleVim/Vundle.vim' "Vundle
  Plugin 'vim-airline/vim-airline' "Cool statusline
  Plugin 'vim-airline/vim-airline-themes' "Airline themes
  Plugin 'Shougo/neocomplete.vim' "Tab-complete code
  Plugin 'Shougo/neosnippet.vim' "Snippet support
  Plugin 'tpope/vim-surround' "Better deletion of brackets, parens, etc.
  Plugin 'Shougo/neosnippet-snippets' "Snippet list
  "Plugin 'Shougo/context_filetype.vim' "Allow neosnippet to switch filetype on context
  Plugin 'ludovicchabant/vim-gutentags'
  Plugin 'xolox/vim-misc'
  Plugin 'scrooloose/syntastic' "Syntax checker
  Plugin 'notpratheek/vim-luna' "Nice theme
  Plugin 'https://notabug.org/SylvieLorxu/vim-betterK.git' "Improve K command
  Plugin 'tpope/vim-fugitive' " git wrapper
  Plugin 'fatih/vim-go' " golang support
  Plugin 'leafgarland/typescript-vim' " typescript highlighting
  Plugin 'Quramy/tsuquyomi' " typescript autocompletion
  Plugin 'junegunn/fzf.vim'
  Plugin 'junegunn/fzf'
  Plugin 'glench/vim-jinja2-syntax' " Jinja2 syntax highlighting
  Plugin 'PyCQA/flake8' " Python style enforcement
  Plugin 'nvie/vim-flake8' " flake8 vim config
call vundle#end()

" Set up colorscheme
" Manually force all available colors
" and up colors.
syntax enable
set background=dark
colorscheme deus
hi Comment guifg=#5C6370 ctermfg=59
"   Range:   233 (darkest) ~ 238 (lightest)
"   Default: 235

" Neocomplete. TODO: update to nvim
let g:neocomplete#enable_at_startup = 1
" Airline-vim
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '>'
let g:airline_theme='luna'

" YouCompleteMe -- Don't ask to use local extras
let g:ycm_confirm_extra_conf = 0

" fzf ctrl+p compatibily
nnoremap <C-p> :Files<Cr>

" fzf file search
nnoremap <C-f> :Rg<Cr>

" This prevents Rg from also searching for file names, which is what :Files is
" for
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Sets line numbers
set number

" Tab key adds 2 spaces,
" pushing delete will delete the 2 spaces as if it were a tab character
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" for yaml
autocmd BufNewFile,BufRead *.yaml set expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.yml set expandtab tabstop=4 softtabstop=4 shiftwidth=4

" Fix my backspaces
set backspace=indent,eol,start

" Reload files modified outside vim
set autoread

" set hlsearch
set hlsearch

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set utf8 to standard encoding
set encoding=utf8

" Turn on regex
set magic

" Always preference reading off disk
set autoread

" Intelligent indentation & tabs
set autoindent
set smartindent
set smarttab

" Case insensitive search, except with capital letters
set ignorecase
set smartcase

" Show commands
set showcmd

" Show current position
set ruler

" Enable filetype detection
filetype on
filetype plugin on
filetype indent on

" Delete trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e


"Save as sudo with w!! (when lacking root)
cmap w!! w !sudo tee % >/dev/null

" Recursively search up to home dir for ctags
" Going up to root is too expensive
set tags+=tags;$HOME

" Ctrl+\ to up function definition in vertical split
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Toggle hlsearch with F1
nnoremap <F1> :set hlsearch!<CR>

" Toggle paste with F2
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Toggle line numbers with F3
nnoremap <F3> :set norelativenumber! nonumber!<CR>
