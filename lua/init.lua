require("config.lazy")
require("config.settings")
require("config.mappings")
require("lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})
