return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    opts = {
      options = { always_show_bufferline = true },
    },
  },
  {
    "tiagovla/scope.nvim",
    dependencies = "akinsho/bufferline.nvim",
    opts = {},
  },
  --   {
  --     "lualine.nvim",
  --     opts = {},
  --   },
}
