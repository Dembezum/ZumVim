require("core.options")
require("core.keymaps")
require("core.autocmds")
require("core.plugins")
require("core.plugin_config")

vim.api.nvim_exec([[
augroup CiscoIOSColors
    autocmd!
    autocmd FileType ios source ~/.config/nvim/lua/core/ios.vim
augroup END
]], false)

