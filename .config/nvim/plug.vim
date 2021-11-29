if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

if has("nvim")
  Plug 'ayu-theme/ayu-vim'
endif

call plug#end()
