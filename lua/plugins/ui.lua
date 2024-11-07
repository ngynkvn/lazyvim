return {
  { "folke/trouble.nvim", opts = { max_items = false } },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = { options = { always_show_bufferline = true } },
  },
  { "tiagovla/scope.nvim", dependencies = "akinsho/bufferline.nvim", opts = {} },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = { window = { position = "float" } },
  },
}
