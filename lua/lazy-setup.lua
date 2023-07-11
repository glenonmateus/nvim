local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"nvim-lua/plenary.nvim",
	"catppuccin/nvim",
	-- tmux and split window navigation
	"christoomey/vim-tmux-navigator",
	-- maximizes and restores current window
	"szw/vim-maximizer",
	-- essential plugins
	"tpope/vim-surround",
	"vim-scripts/ReplaceWithRegister",
	-- commenting with gc
	"numToStr/Comment.nvim",
	-- file explorer
	"nvim-tree/nvim-tree.lua",
	"nvim-telescope/telescope-file-browser.nvim",
	-- statusline
	"nvim-lualine/lualine.nvim",
	-- fuzzy finding
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },
	{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
	-- autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	-- managing and installing lsp servers
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	-- configuring lsp servers
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"onsails/lspkind.nvim",
	{
		"nvimdev/lspsaga.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
	-- formatting and linting
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",
	-- auto closing
	"windwp/nvim-autopairs",
	-- git signs plugin
	"lewis6991/gitsigns.nvim",
	-- which-key
	"folke/which-key.nvim",
	{
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
})
