require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = {
        "python",
        "javascript",
        "rust",
        "bash",
        "java",
        "c",
        "lua",
        "vim",
        "vimdoc"
    },
    ignore_install = { "" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        disable = {
            "clangd",
            "markdown",
            "cpp",
            "lua_ls",
        }
    },
}
