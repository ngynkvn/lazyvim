return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = { options = { always_show_bufferline = true } },
  },
  { "folke/trouble.nvim", opts = { max_items = false } },
  { "tiagovla/scope.nvim", dependencies = "akinsho/bufferline.nvim", opts = {} },
  --{ "lualine.nvim", opts = {}, },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = { window = { position = "float" } },
  },
}
