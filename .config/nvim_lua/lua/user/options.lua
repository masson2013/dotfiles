-- :help options
local options = {
  termguicolors = true,
  fileencoding = "utf-8",
  errorbells = false,
  title = true,
--showmode = false,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  background = "dark",
  showtabline = 2,
  tabstop = 2,
  softtabstop = 4,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,
  smartcase = true,
  hlsearch = false,
  ignorecase = true,
  incsearch = true,
  hidden = true,
  wrap = false,
  swapfile = false,
  backup = false,
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  undofile = true,
  updatetime = 300,
  showcmd = true,
  cmdheight = 2,
  conceallevel = 0,
  clipboard = "unnamedplus",
  completeopt = { "menuone", "noselect" },
--mouse = "a",
  pumheight = 10,
  scrolloff = 8,
  sidescrolloff = 8,
  laststatus = 2,
  lazyredraw = true,
  showmatch = false,
  writebackup = false,
  timeoutlen = 1000,
  splitbelow = true,
  splitright = true,
  cursorline = true,
  path = ".,/user/include,,*,**",
  wildignore = "*/node_modules/*",
  formatoptions = "tcqjr",
  foldenable = true,
  foldmethod = "indent",
  foldnestmax = 10,
  foldlevel = 10
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[autocmd InsertLeave * set nopaste]]

