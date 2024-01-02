return {
	-- Everything in here is in regars to coding and/or note taking

	-- File nav
	{
		"ThePrimeagen/harpoon",
		config = function(_, _)
			require("ryanconf.custom.harpoon")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("ryanconf.custom.nvimtree")
		end,
	},

	-- Quality of life

	{
		"nvim-pack/nvim-spectre",
	},
	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("ryanconf.custom.autoclose")
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function(_, _)
			require("ryanconf.custom.comment")
		end,
	},
	{
		"ggandor/leap.nvim",
		config = function(_, _)
			require("ryanconf.custom.leap")
		end,
	},
	{
		"mbbill/undotree",
	},
	{
		"christoomey/vim-tmux-navigator",
	},
	-- Notes
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{
		"vimwiki/vimwiki",
	},

	-- formatting
	{
		"nvimtools/none-ls.nvim",
		config = function()
			require("ryanconf.custom.nonels")
		end,
		requires = { "nvim-lua/plenary.nvim" },
	},
}
