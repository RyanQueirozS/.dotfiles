require("autoclose").setup({
   keys = {
      ["$"] = { escape = true, close = true, pair = "$$", disabled_filetypes = {} },
      [">"] = { escape = false, close = false, pair = "<>", disabled_filetypes = {} },
   },
})
