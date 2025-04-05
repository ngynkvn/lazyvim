return {
  {
    "ibhagwan/fzf-lua",
    opts = {
      winopts = {
        layout = "horizontal",
        backdrop = 95,
        width = 0.9,
        height = 0.8,
        row = 0.5,
      },
    },
  },
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
  --{ "smear-cursor.nvim", vscode = false },
}
