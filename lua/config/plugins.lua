return {

    { 'rose-pine/neovim', name = 'rose-pine' },
    { "williamboman/mason.nvim", build = ":MasonUpdate", cmd = "Mason" },
    { "williamboman/mason-lspconfig.nvim" },
    { "numToStr/Comment.nvim" }, -- Comments
    { "kyazdani42/nvim-web-devicons" }, -- icons
    { "neovim/nvim-lspconfig", event = "BufReadPre" }, -- LSP
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
        "echasnovski/mini.surround",
        version = "*",
        config = function()
            require("mini.surround").setup({})
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        cmd = "Neotree",
        version = "*",
        dependencies = { "MunifTanjim/nui.nvim", lazy = true },
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
            { "mtoohey31/cmp-fish", ft = "fish" },
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-nvim-lsp",
            "amarakon/nvim-cmp-fonts",
            "saadparwaiz1/cmp_luasnip",
            "dcampos/cmp-emmet-vim",
            "ray-x/cmp-treesitter",
        },

        {
            "L3MON4D3/LuaSnip",
            -- follow latest release.
            version = "<CurrentMajor>.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
            -- install jsregexp (optional!).
            build = "make install_jsregexp"
        },
        config = function()
            require("user.cmp")
        end,
    }, -- Cmp
    {
        "iamcco/markdown-preview.nvim",
        ft = "markdown",
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    }, -- preview markdown files on browser



}
