local lspconfig = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local opts = { buffer = event.buf }
		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, opts)
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, opts)
		vim.keymap.set("n", "<leader>vws", function()
			vim.lsp.buf.workspace_symbol()
		end, opts)
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_next()
		end, opts)
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_prev()
		end, opts)
		vim.keymap.set("n", "<leader>vca", function()
			vim.lsp.buf.code_action()
		end, opts)
		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, opts)
	end,
})

local default_setup = function(server)
	lspconfig[server].setup({
		capabilities = lsp_capabilities,
	})
end

require("mason").setup({
	ensure_installed = {
		"clangd",
		"clang_format",
		"codelldb",
		"lua",
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {},
	handlers = {
		default_setup,
		lua_ls = function()
			require("lspconfig").lua_ls.setup({})
			require("lspconfig").gopls.setup({
				cmd = {
					"gopls",
				},
				filetypes = {
					"go",
					"gomod",
					"gowork",
					"gotmpl",
				},
				single_file_support = true,
			})
			require("lspconfig").clangd.setup({
				cmd = {
					"clangd",
				},
				filetypes = {
					"cpp",
					"c",
					"hpp",
					"h",
				},
			})
		end,
	},
})

local cmp = require("cmp")

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
	},
	mapping = cmp.mapping.preset.insert({
		-- Enter key confirms completion item
		["<CR>"] = cmp.mapping.confirm({ select = false }),

		-- Ctrl + space triggers completion menu
		["<C-Space>"] = cmp.mapping.complete(),
	}),
	snippet = {
		expand = function()
			require("luasnip").lsp_expand()
		end,
	},
})
