local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- **** Normal **** --
keymap("n", "wh", "<C-w>h", opts)
keymap("n", "wj", "<C-w>j", opts)
keymap("n", "wk", "<C-w>k", opts)
keymap("n", "wl", "<C-w>l", opts)

-- Window
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", opts)

-- Split window
keymap("n", "ws", ":split<CR>", opts)
keymap("n", "wv", ":vsplit<CR>", opts)

-- Resize with arrows
keymap("n", "<C-k>", ":resize -2<CR>", opts)
keymap("n", "<C-j>", ":resize +2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Bbye the buffer
keymap("n", "wq", ":Bdelete<CR>", opts)
keymap("n", "wx", ":Bwipeout!<CR>", opts)

-- Telescope --
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>", opts)
keymap("n", "<leader>rg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<CR>", opts)
keymap("n", ";", "<cmd>Telescope buffers<CR>", opts)

-- ToggleTerm --
keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", opts)
keymap("n", "<leader>ts", "<cmd>ToggleTerm size=10 direction=horizontal<CR>", opts)
keymap("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<CR>", opts)

-- Folding --
keymap("n", "[", "za", opts)

-- **** Insert **** --
-- Remap ESC to jj
keymap("i", "jj", "<ESC>", opts)

-- **** Visual **** --
-- Copy to the clipboard
-- keymap("v", "<C-c>", "*y :let @+=@*<CR>", opts)
--

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- **** Visual Block **** --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move .+1<CR>==", opts)
keymap("x", "<A-k>", ":move .-2<CR>==", opts)
-- Copy to the clipboard
-- keymap("x", "<C-c>", "*y :let @+=@*<CR>", opts)

