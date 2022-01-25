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

-- Map C-j as C-n in command mode
keymap("c", "<C-j>", "<C-n>", opts)
keymap("c", "<C-k>", "<C-p>", opts)

-- Add one space
keymap("n", "[s", "i<space><esc>l", opts)
keymap("n", "]s", "a<space><esc>h", opts)

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<BS>", ":bprevious<CR>", opts)

-- Navigate tabs
keymap("n", "<M-l>", ":tabnext<CR>", opts)
keymap("n", "<M-h>", ":tabprevious<CR>", opts)

-- MRU 
keymap("n", "<leader>b", ":b <C-z>", opts)
keymap("n", "<leader>m", ":ME <C-z>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Easier horizontal scrolling
keymap("n", "zl", "zL", opts)
keymap("n", "zh", "zH", opts)
 
-- Paste multiple lines multiple times with simple ppppp
keymap("v", "y", "y`]", opts)
keymap("v", "p", "p`]", opts)
keymap("n", "p", "p`]", opts)

-- Increase value resize split
keymap("n", "<C-w>+", ":resize +5<CR>", opts)
keymap("n", "<C-w>-", ":resize -5<CR>", opts)
keymap("n", "<C-w>>", ":vertical:resize +5<CR>", opts)
keymap("n", "<C-w><", ":vertical:resize -5<CR>", opts)

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
keymap("n", "<leader>f", ":find<space>", opts)
keymap("n", "<leader>s", ":saveas<space>", opts)
keymap("n", "<leader>t", ":tabnew<space>", opts)
keymap("n", "<leader>T", ":tabnew<CR>", opts)
keymap("n", "<leader>e", ":e<space>", opts)
keymap("n", "<leader>E", ":e <C-R>=expand('%:p:h') . '/' <CR>", opts)
keymap("n", "<leader>c", ":cd<Space>", opts)
keymap("n", "<leader>C", ":cd %:p:h<CR>:pwd<CR>", opts)
keymap("n", "<leader>O", ":%bd!|e#|bd!#<CR>", opts)

-- Moving around
keymap("i", "<C-a>", "<Home>", opts)
keymap("i", "<C-e>", "<End>", opts)
keymap("i", "<C-f>", "<right>", opts)
keymap("i", "<C-b>", "<left>", opts)
keymap("c", "<C-a>", "<Home>", opts)
keymap("c", "<C-e>", "<End>", opts)
keymap("c", "<C-f>", "<right>", opts)
keymap("c", "<C-b>", "<left>", opts)
keymap("i", "<M-l>", "<right>", opts)
keymap("i", "<M-h>", "<left>", opts)
keymap("i", "<M-k>", "<S-Left>", opts)
keymap("i", "<M-j>", "<S-Right>", opts)
keymap("c", "<M-l>", "<right>", opts)
keymap("c", "<M-h>", "<left>", opts)
keymap("c", "<M-k>", "<S-Left>", opts)
keymap("c", "<M-j>", "<S-Right>", opts)

-- Nvimtree
keymap("n", "<C-n>", ":NvimTreeToggle<cr>", opts)
