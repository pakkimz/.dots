local opts = { noremap = true, silent = false }
local optst = { noremap = true, silent = true }
local exprs = { expr = true }
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
-- operator_pending = "o",
-- command_mode = "c",
-- select_mode = "s",

-- Say Nop for q and Q and +
keymap("n", "q", "<Nop>", opts)
keymap("n", "Q", "<Nop>", opts)
keymap("n", "+", "<Nop>", opts)
keymap("v", "+", "<Nop>", opts)
keymap("n", "-", "<Nop>", opts)
keymap("v", "-", "<Nop>", opts)

-- '., gi, gv, go
keymap("n", "g.", "`.", opts)

-- Re select pasted text
keymap("n", "gV", "`[v`]", opts)

-- Paste multiple lines multiple times with simple ppppp
keymap("v", "y", "y`]", optst)
keymap("v", "p", "p`]", optst)
keymap("n", "p", "p`]", optst)

-- Map p as printable p in select-mode (used in snippet)
keymap("s", "p", "p", opts)
keymap("s", "y", "y", opts)

-- Prevent selecting and pasting from overwriting what's in the clipboard
keymap("n", "x", "\"_x", opts)
keymap("n", "X", "\"_x", opts)
keymap("n", "<Del>", "\"_x", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Easier horizontal scrolling
keymap("n", "zl", "zL", opts)
keymap("n", "zh", "zH", opts)

-- Map C-j as <tab> in command mode (see in :verbose cmap <tab>)
keymap("c", "<C-j>", "<Cmd>call v:lua.cmp.utils.keymap.set_map(25)<CR>", opts)
keymap("c", "<C-k>", "<Cmd>call v:lua.cmp.utils.keymap.set_map(16)<CR>", opts)

-- Add one space
keymap("n", "[s", "i<space><esc>l", opts)
keymap("n", "]s", "a<space><esc>h", opts)

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<BS>", ":bprevious<CR>", opts)

-- Easier scrolling when wrap
keymap("n", "j", "v:count ? 'j' : 'gj'", exprs)
keymap("n", "k", "v:count ? 'k' : 'gk'", exprs)

-- Recall the command-line whose beginning matches the current command-line
keymap("c", "<c-n>", "wildmenumode() ? '<c-n>' : '<down>'", exprs)
keymap("c", "<c-p>", "wildmenumode() ? '<c-p>' : '<up>'", exprs)

-- Increase value resize split
keymap("n", "<C-w>+", ":resize +5<CR>", optst)
keymap("n", "<C-w>-", ":resize -5<CR>", optst)
keymap("n", "<C-w>>", ":vertical:resize +5<CR>", optst)
keymap("n", "<C-w><", ":vertical:resize -5<CR>", optst)

-- Esc stuffs
keymap("i", "<C-space>", "<Esc>`^", opts)
keymap("v", "<C-space>", "<Esc>gV", opts)
keymap("x", "<C-space>", "<Esc>", opts)
keymap("o", "<C-space>", "<Esc>", opts)
keymap("c", "<C-space>", "<C-c>", opts)
keymap("n", "<C-space>", "<Esc>:noh<CR>", opts)

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

-- Play with leader
keymap("n", "<leader>w", ":w!<CR>", opts)
keymap("n", "<leader>W", ":wa!<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>Q", ":qa!<CR>", opts)
keymap("n", "<leader>s", ":saveas<space>", opts)
keymap("n", "<leader>t", ":tabnew<space>", opts)
keymap("n", "<leader>T", ":tabnew<CR>", opts)
keymap("n", "<leader>e", ":e<space>", opts)
keymap("n", "<leader>E", ":e <C-R>=expand('%:p:h') . '/' <CR>", opts)
keymap("n", "<leader>c", ":cd<Space>", opts)
keymap("n", "<leader>C", ":cd %:p:h<CR>:pwd<CR>", opts)
keymap("n", "<leader>r", ":bd<CR>", opts)
keymap("n", "<leader>R", ":bw!<CR>", opts)
keymap("n", "<leader>x", ":bp|bd #<CR>", opts)            -- Delete buffer without closing split
keymap("n", "<leader>O", ":%bd!|e#|bd!#<CR>", opts)       -- Leave only one buffer

-- Ag
keymap("n", "<leader>a", ":Ag!<space>", opts)
keymap("n", "<leader>A", ":AgFile!<space>", opts)

-- MRU
keymap("n", "<leader>f", ":e <C-z>", opts)
keymap("n", "<leader>b", ":b <C-z>", opts)
keymap("n", "<leader>m", ":ME <C-z>", opts)

-- Cosco
keymap("n", "<M-;>", ":CommaOrSemiColon<CR>", optst)
keymap("i", "<M-;>", "<esc>:CommaOrSemiColon<CR>a", optst)

-- Tagbar
keymap("n", "<F8>", ":TagbarToggle<CR>", optst)

-- Nvimtree
keymap("n", "<C-n>", ":NvimTreeToggle<cr>", optst)
