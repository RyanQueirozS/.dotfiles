return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("ryanconf.custom.colors")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("ryanconf.custom.lualine")
		end,
	},
	{
		"nvim-tree/nvim-web-devicons",
	},
}
