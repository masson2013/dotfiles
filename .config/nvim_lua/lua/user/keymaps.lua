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

-- * Normal * --
-- Window
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lexplore 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-J>", ":resize +2<CR>", opts)
keymap("n", "<C-K>", ":resize -2<CR>", opts)
keymap("n", "<C-H>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-L>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- * Insert * --
-- Remap ESC to jk
keymap("i", "jk", "<ESC>", opts)

-- * Visual * --
-- Copy to the clipboard
keymap("v", "<C-c>", "*y :let @+=@*<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<C-f>", ":move '>+1<CR>gv-gv", opts)
keymap("v", "<C-v>", ":move '<-2<CR>gv-gv", opts)
keymap("v", "p", '"_dP', opts)

-- * Visual Block * --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- Copy to the clipboard
keymap("x", "<C-c>", "*y :let @+=@*<CR>", opts)

