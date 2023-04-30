local options = {
require("neo-tree").setup({
      filesystem = {
        window = {
          mappings = {
            ["<F5>"] = "refresh",
            ["<C-g>"] = "open",
          }
        }
      }
    })
}

return options
