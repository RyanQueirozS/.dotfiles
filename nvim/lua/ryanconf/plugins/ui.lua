return {
	{ 
		"ellisonleao/gruvbox.nvim",
		priority = 1000 ,
		config = function()
      require("ryanconf.custom.colors")
		end,
		opts = ...
	},
	{
		"nvim-tree/nvim-web-devicons"
	},
	{
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons",
				opt = true }

		}
}
