return {

    { 'rose-pine/neovim', name = 'rose-pine' },
    { "mbbill/undotree" }, -- undo tree
    { "lukas-reineke/indent-blankline.nvim" }, -- indent blankline
    { "akinsho/bufferline.nvim", version = "v3.*" },
    { "windwp/nvim-autopairs" }, -- auto close ({[
    { "nvim-lualine/lualine.nvim" }, -- status bar
    { "windwp/nvim-ts-autotag" }, -- <> autoclose tag
    { "nvim-telescope/telescope.nvim", version = "0.1.x" }, -- fzf finder
    { "nvim-lua/plenary.nvim" },
    { "folke/which-key.nvim", lazy = true }, -- which key
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make", lazy = false },
    { "nvim-telescope/telescope-project.nvim" }, -- find projects
    { "nvim-telescope/telescope-ui-select.nvim" },
    { "goolord/alpha-nvim" }, -- title screen
    { "asiryk/auto-hlsearch.nvim" }, -- better search
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    {
        "echasnovski/mini.surround",
        version = "*",
        config = function()
            require("mini.surround").setup({})
        end,
    },

    {
        "rcarriga/nvim-notify",
        config = function()
            vim.notify = require("notify")
            require("notify").setup({
                timeout = 500,
                render = "minimal",
                background_colour = "#00000000",
            })
        end,
    }, -- notify
    {
        "hrsh7th/nvim-cmp",
        event = { "InsertEnter", "CmdlineEnter" },
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "dburian/cmp-markdown-link",
            "hrsh7th/cmp-buffer",
            "jcha0713/cmp-tw2css",
        },
        "iamcco/markdown-preview.nvim",
        ft = "markdown",
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    }, -- preview markdown files on browser

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = true,
        event = "BufReadPost",
        dependencies = {
            { "nvim-treesitter/nvim-treesitter-textobjects" },
        },
        config = function()
            require("config.plugins.treesitter")
        end,
    }, -- a better highlight for everything

        { "nvim-neo-tree/neo-tree.nvim",
        dependencies = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    },


    -- autopairing of (){}[] etc
    {
        "windwp/nvim-autopairs",
        opts = {
            fast_wrap = {},
            disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
            require("nvim-autopairs").setup(opts)

            -- setup cmp for autopairs
            local cmp_autopairs = require "nvim-autopairs.completion.cmp"
            require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
    },
}
