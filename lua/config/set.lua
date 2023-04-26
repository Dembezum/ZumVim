vim.cmd('colorscheme rose-pine')
vim.opt.write = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.relativenumber = true
vim.opt.isfname:append("@-@")
vim.opt.termguicolors = true
vim.opt.smartindent = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.updatetime = 50
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.guicursor = ""
vim.opt.backup = false
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.number = true
vim.opt.splitright = true
vim.opt.cmdheight = 1
