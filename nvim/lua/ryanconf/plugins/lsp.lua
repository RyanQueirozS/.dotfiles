return {
  {
    "hrsh7th/nvim-cmp"
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "neovim/nvim-lspconfig"
  },
  {
    "L3MON4D3/LuaSnip"
  },
  {
    "williamboman/mason.nvim"
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function (_, _)
      require("ryanconf.custom.lspconfig")
    end,
  },
}
