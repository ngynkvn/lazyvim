return {
  -- ui.bufferline.lua --
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
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
  -- ui.neotree.lua --
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
        width = 18,
      },
    },
  },
  -- ui.trouble.lua
  -- Import subdirectories, and allow wrapping
  { "folke/trouble.nvim", opts = { max_items = false, win = { wo = { wrap = true } } } },
  -- end --
}
