local options = {
	clipboard = "unnamedplus",
	termguicolors = true,
	synmaxcol = 500,
	regexpengine = 1,
  updatetime = 300, -- faster completion
	number = false,
	showcmd = true,
	showmode = false,
	ruler = false,
	matchtime = 3,
	ttimeoutlen = 10,
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	smarttab = true,
	shiftround = true,
	expandtab = true,
	backspace = "indent,eol,start",
	textwidth = 106,
	autoindent = true,
	breakindent = true,
	linebreak = true,
	mouse = "a",
	wildmenu = true,
	wildmode = "full",
	virtualedit = "block",
	startofline = false,
	hlsearch = true,
	incsearch = true,
	ignorecase = true,
	smartcase = true,
	confirm = true,
	autowrite = true,
	-- complete-=i,
  -- statusline = "⠀",
  laststatus = 0, -- If 3 activate only in main window
	pumheight = 10,
	scrolloff = 2,
	sidescrolloff = 2,
	splitbelow = true,
	splitright = true,
	undofile = true,
	history = 1000,
	backup = true,
	writebackup = true,
	backupcopy = "yes",
	dictionary = "/usr/share/dict/words",
	completeopt = { "menuone", "noinsert" },
  numberwidth = 2,
  signcolumn = "yes",
  belloff = "all",
	hidden = true,
	lazyredraw = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.shortmess:append "atIc"

vim.cmd "set wildcharm=<C-z>"
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd "set backupdir=~/.local/share/nvim/backup//"
vim.cmd "set directory=~/.local/share/nvim/swap//"
vim.cmd "set undodir=~/.local/share/nvim/undo//"
