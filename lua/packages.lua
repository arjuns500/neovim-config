local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require("packer").startup(function()
	-- Allow packer to manage itself.
	use "wbthomason/packer.nvim"

	--- EXTRA / DEPENDENCIES ---

	-- A lua version of `vim-devicons`.
	use "kyazdani42/nvim-web-devicons"

	-- A library which contains some useful functions
	use "nvim-lua/plenary.nvim"

	-- A plugin which decouples `updatetime` from CusorHold
	-- and adds a perf fix for it too
	use "antoinemadec/FixCursorHold.nvim"

	--- UI ---

	-- A modern nord theme, with support for treesitter and more.
	use "shaunsingh/nord.nvim"

	-- A fast tree written mainly in lua.
	use "kyazdani42/nvim-tree.lua"

	-- A status line written in lua
	use {
		"hoob3rt/lualine.nvim",
		config = function() require("plugins.lualine") end
	}

	-- A versatile package to provide fuzzy finders over almost any list
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}}
	}

	--- LANGUAGE FEATURES ---

	-- A frontend for treesitter, with features such as highlighting.
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function() require("plugins.treesitter") end
	}

	-- A way to inject lsp capabilites into neovim without a server
	use "jose-elias-alvarez/null-ls.nvim"

	-- Default configurations for the lsp client in neovim.
	use {
		"neovim/nvim-lspconfig",
		config = function() require("plugins.lspconfig") end
	}

	-- A fast completion plugin for the lsp client
	use {
		"hrsh7th/nvim-compe",
		config = function() require("plugins.completion") end
	}

	--- EDITING ---

	-- Auto pairing plugin
	use {
		"jiangmiao/auto-pairs",
		disable = true
	}

	-- A plugin to show show possible keybinding completions
	use "folke/which-key.nvim"

	-- A package to help installing lsp servers
	use "williamboman/nvim-lsp-installer"
end)
