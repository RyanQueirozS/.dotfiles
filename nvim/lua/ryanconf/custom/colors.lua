function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#458588", bold = true })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffcc00", bold = true })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#cc241d", bold = true })

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

require("rose-pine").setup({
	variant = "auto",
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = true,
})

ColorMyPencils()
