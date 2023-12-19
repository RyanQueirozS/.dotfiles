return {
    {
        "folke/trouble.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function(_, _)
            require("ryanconf.custom.trouble")
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function(_, _)
            require("ryanconf.custom.telescope")
        end,
    },
    {
        "christoomey/vim-tmux-navigator",
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
            "nvimdev/guard-collection",
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
        "jay-babu/mason-nvim-dap.nvim",
    },
    {
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" },
    },
    {
        "ggandor/leap.nvim",
        config = function(_, _)
            require("ryanconf.custom.leap")
        end,
    },
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
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "nvim-telescope/telescope.nvim", -- optional
            "sindrets/diffview.nvim",        -- optional
            "ibhagwan/fzf-lua",              -- optional
        },
        config = function(_, _)
            require("ryanconf.custom.neogit")
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("ryanconf.custom.gitsigns")
        end,
        {
            "nvim-tree/nvim-web-devicons",
        },
        {
            "nvim-treesitter/nvim-treesitter",
            config = function()
                require("ryanconf.custom.treesitter")
            end,
        },
        {
            "nvim-treesitter/playground"
        },

},
}
