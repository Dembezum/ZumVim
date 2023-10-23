vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = "*",
    group = vim.api.nvim_create_augroup("auto_create_dir", { clear = true }),
    callback = function(ctx)
        local dir = vim.fn.fnamemodify(ctx.file, ":p:h")
        vim.fn.mkdir(dir, "p")
    end
})
vim.api.nvim_exec([[
augroup CiscoIOSColors
    autocmd!
    autocmd FileType ciscoios colorscheme ciscoios_colorscheme
augroup END
]], false)

