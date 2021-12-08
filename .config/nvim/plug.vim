if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

if has("nvim")
  Plug 'ayu-theme/ayu-vim'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'windwp/nvim-autopairs'

  Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
  Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons

  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'glepnir/lspsaga.nvim'

  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  
  Plug 'hrsh7th/nvim-cmp'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'

endif

call plug#end()
