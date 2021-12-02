" Fundamentals "{{{
" ------------------------------------------------------------------------------
autocmd!
scriptencoding utf-8
" Stop loading config if it's on tiny or small
if !1 | finish | endif
set nocompatible " Use Vim defaults (much better!)
set noerrorbells
set number
set relativenumber
syntax enable
set background=dark
set encoding=utf-8
set title
set autoindent
" Number of space as tab will be entered
set tabstop=2 softtabstop=4 
" Numbers of space for the indentation 
set shiftwidth=2 
" Use space as tab ctrl-V<tab> to enter the real tab
set expandtab 
" Do smart autoindenting
set smartindent 
set backspace=start,eol,indent
" Keep the prompt always block
set guicursor=
set nohlsearch
" Increase high light when search
set incsearch
" Buffer opened in the background and don't save
set hidden
set nowrap
" Use Captial letter as case sensitve
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=
set nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*
" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste
" Add asterisks in block comments
set formatoptions+=r
" }}}

" Highlights "{{{
" ------------------------------------------------------------------------------
set cursorline

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif
" }}}

" Imports "{{{
" ------------------------------------------------------------------------------
runtime ./plug.vim
if has("unitx")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtim ./maps.vim
"}}}

" Syntax theme "{{{
" -------------------------------------------------------------------------------
"
"  true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  let ayucolor="mirage"
  colorscheme ayu
  highlight Normal guibg=none
endif

"}}}
        
" Extras "{{{
" ------------------------------------------------------------------------------
" Source vimrc in the local dir if there is one
set exrc
" }}}

" Folding "{{{
" ------------------------------------------------------------------------------
set foldenable          
set foldmethod=indent   " fold based on indent / marker 
set foldnestmax=10      " max 10 depth
set foldlevel=10         " default foldleve. 0 is the top      
" remap the space to open / close the fold
nnoremap <space> za 
" }}}

" SignColumn "{{{
" -------------------------------------------------------------------------------
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.1") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
"}}}


" vim:foldmethod=marker:foldlevel=0

