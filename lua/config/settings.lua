-- NOTE: put alll options here for the loop 😀

-- HACK: one day i'll figure out what is this, but works nice. :)
-- vim.opt.statuscolumn =
-- 	"%{v:virtnum < 1 ? (v:relnum ? v:relnum : v:lnum < 10 ? v:lnum . '  ' : v:lnum) : ''}%=%{v:relnum == 0 ? ' ' : ''}"

local options = {
	backup = false, -- creates a backup file
	clipboard = "", -- allows neovim to access the system clipboard
	cmdheight = 1, -- more space in the neovim command line for displaying messages
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	fileencoding = "utf-8", -- the encoding written to a file
	hlsearch = true, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	mouse = "a", -- allow the mouse to be used in neovim
	pumheight = 10, -- pop up menu height
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
	foldmethod = "indent",
	-- foldexpr = "nvim_treesitter#foldexpr()",
	fillchars = { fold = " " },
	foldcolumn = "0", -- '0' is not bad
	foldlevel = 99, -- Using ufo provider need a large value, feel free to decrease the value
	foldlevelstart = 99,
	foldenable = true,
	showcmd = false,
	showtabline = 2, -- always show tabs
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- creates a swapfile
	guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50",
	termguicolors = true, -- set term gui colors (most terminals support this)
	timeoutlen = 300, -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true, -- enable persistent undo
	updatetime = 50, -- faster completion (4000ms default)
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	expandtab = true, -- convert tabs to spaces
	shiftwidth = 4, -- the number of spaces inserted for each indentation
	tabstop = 4, -- insert 2 spaces for a tab
	softtabstop = 2, -- insert 2 spaces for a tab
	cursorline = true, -- highlight the current line
	number = true, -- set numbered lines
	relativenumber = true, -- set relative numbered lines
	numberwidth = 2, -- set number column width to 2 {default 4}
	-- signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
	linebreak = true, -- companion to wrap, don't split words
	scrolloff = 8, -- minimal number of screen lines to keep above and below the cursor
    incsearch = true,
    colorcolumn = 80,
	sidescrolloff = 8, -- minimal number of screen columns either side of cursor if wrap is `false`
	wrap = false, -- wrap
}
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.cmd('colorscheme rose-pine')

vim.opt.shortmess:append("c")
for k, v in pairs(options) do
	vim.opt[k] = v
end
