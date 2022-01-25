local opts = { noremap = true, silent = false }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- modes
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",

-- '., gi, gv, go
keymap("n", "g.", "`.", opts)

-- Re select pasted text
keymap("n", "gV", "`[v`]", opts)

-- Say Nop for q and Q and +
keymap("n", "q", "<Nop>", opts)
keymap("n", "Q", "<Nop>", opts)
keymap("n", "+", "<Nop>", opts)
keymap("v", "+", "<Nop>", opts)

-- Add one space
keymap("n", "[s", "i<space><esc>l", opts)
keymap("n", "]s", "a<space><esc>h", opts)

-- Esc stuffs
keymap("i", "<C-space>", "<Esc>`^", opts)
keymap("v", "<C-space>", "<Esc>gV", opts)
keymap("x", "<C-space>", "<Esc>", opts)
keymap("c", "<C-space>", "<C-c>", opts)
keymap("n", "<C-space>", "<Esc>:noh<CR>", opts)

-- Play with leader
keymap("n", "<leader>w", ":w!<CR>", opts)
keymap("n", "<leader>W", ":wa!<CR>", opts)
keymap("n", "<leader>x", ":x<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>Q", ":qa!<CR>", opts)
keymap("n", "<leader>r", ":bd<CR>", opts)
keymap("n", "<leader>R", ":bw!<CR>", opts)
keymap("n", "<leader>e", ":e<space>", opts)
keymap("n", "<leader>E", ":e <C-R>=expand('%:p:h') . '/' <CR>", opts)
keymap("n", "<leader>f", ":find<space>", opts)
keymap("n", "<leader>s", ":saveas<space>", opts)
keymap("n", "<leader>t", ":tabnew<space>", opts)
keymap("n", "<leader>T", ":tabnew<CR>", opts)

-- Nvimtree
keymap("n", "<C-n>", ":NvimTreeToggle<cr>", opts)
