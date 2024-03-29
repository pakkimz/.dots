local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use "wbthomason/packer.nvim"	-- Have packer manage itself
	use "nvim-lua/popup.nvim"			-- An implementation of the Popup API from vim in Neovim
	use "nvim-lua/plenary.nvim"		-- Useful lua functions used ny lots of plugins
	use "windwp/nvim-autopairs" 	-- Autopairs, integrates with both cmp and treesitter
	use "fedepujol/move.nvim"			-- Easily move line
  use "cappyzawa/trim.nvim"     -- Trims trailing whitespace
  use "numToStr/Comment.nvim"   -- Easily comment stuff
  use 'norcalli/nvim-colorizer.lua'   -- Color higlighter

	-- Nvim-tree
	use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

	-- Cmp plugins
	use "hrsh7th/nvim-cmp"				-- The completion plugin
	use "hrsh7th/cmp-buffer"			-- Buffer completions
	-- use "hrsh7th/cmp-path"				-- Path completions
  use "hrsh7th/cmp-nvim-lsp"
	use "saadparwaiz1/cmp_luasnip"-- Snippet completions

	-- Snippets
	use "L3MON4D3/LuaSnip"							-- Snippet engine
	use "rafamadriz/friendly-snippets"	-- A bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig"             -- Enable LSP
  -- use "williamboman/nvim-lsp-installer"   -- Simple to use language server installer

	-- Treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	}
  use 'JoosepAlviste/nvim-ts-context-commentstring'

	-- Vimscript plugins
	use 'pakkimz/jellybeans.vim'
  use 'nelstrom/vim-visual-star-search'
	use 'romainl/vim-tinyMRU'
  use 'vim-scripts/loremipsum'
  use 'vim-scripts/ReplaceWithRegister'
  use 'kana/vim-textobj-user'
  use 'kana/vim-textobj-entire'
  use 'christoomey/vim-titlecase'
  use 'tommcdo/vim-exchange'              -- Exchange word cxiw,cxx,X,cxc
  use 'lfilho/cosco.vim'                  -- Alt+;
  use 'wellle/targets.vim'
	use 'tpope/vim-eunuch'
	use 'tpope/vim-unimpaired'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'                  -- Put this on the last

  use 'rking/ag.vim'
  use {'majutsushi/tagbar', opt = true, cmd = {'TagbarToggle'}}
  use {'ivalkeen/vim-simpledb', ft = 'sql'}
  use {'captbaritone/better-indent-support-for-php-with-html',  ft = 'php' }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
