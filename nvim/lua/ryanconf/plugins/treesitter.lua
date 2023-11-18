return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "go",
    "lua",
    "vim",
    "vimdoc",
    "query" 
  },
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  {
    "nvim-treesitter/playground"
  },
}
