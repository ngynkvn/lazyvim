return {
  -- Import subdirectories
  { import = "plugins.lang" },
  { "folke/trouble.nvim", opts = { max_items = false } },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
        width = 28,
      },
    },
  },
  {
    "otavioschwanck/arrow.nvim",
    opts = {
      show_icons = true,
      leader_key = "<leader>h", -- Recommended to be a single key
      buffer_leader_key = "m", -- Per Buffer Mappings
    },
    keys = {
      { "<leader>h", nil, "n" },
      { "m", nil, "n" },
    },
  },
  -- God that was so fucking hard to figure out
  {
    "folke/which-key.nvim",
    ---@module 'which-key'
    ---@param opts wk.Opts
    opts = function(_, opts)
      table.insert(opts.spec, {
        "<leader>h",
        icon = { cat = "filetype", name = "harpoon" },
        desc = "Arrow",
      })
    end,
  },
  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    opts = {
      default_file_explorer = false,
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  },
}
