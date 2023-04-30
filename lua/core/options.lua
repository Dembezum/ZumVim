local opts = {
  write = true,
  cursorline = true,
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  relativenumber = true,
  isfname = vim.opt.isfname + "@-@",
  termguicolors = true,
  smartindent = true,
  colorcolumn = "80",
  signcolumn = "yes",
  expandtab = true,
  hlsearch = false,
  incsearch = true,
  swapfile = false,
  undofile = true,
  updatetime = 50,
  softtabstop = 4,
  shiftwidth = 2,
  laststatus = 2,
  backup = false,
  wrap = false,
  tabstop = 4,
  number = true,
  splitright = true,
  cmdheight = 1,
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

vim.cmd("colorscheme rose-pine")
