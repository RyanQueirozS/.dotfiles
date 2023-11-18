return {
  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function(_, _)
      require("ryanconf.custom.trouble")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function(_, _)
      require("ryanconf.custom.telescope")
    end,
  },
  {
    "christoomey/vim-tmux-navigator"
  },
  {
    "tpope/vim-fugitive",
    config = function(_, _)
      require("ryanconf.custom.fugitive")
    end,
  },
  {
    "nvimdev/guard-collection",
  },
  {
    "nvimdev/guard.nvim",
    dependencies = {
      "nvimdev/guard-collection"
    },
    config = function(_, _)
      require("ryanconf.custom.guard")
    end,
  },
  {
    "ThePrimeagen/harpoon",
    config = function(_, _)
      require("ryanconf.custom.harpoon")
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      require("ryanconf.custom.dap")
    end,
  },
  {
    "numToStr/Comment.nvim",
    config = function(_, _)
      require("ryanconf.custom.comment")
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim"
  },
  {
    "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap" }
  },
  {
    -- All plugins bellow are relate to lsp zero
    {
    },
  }
}
