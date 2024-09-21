return {
  { "ngynkvn/gotmpl.nvim", opts = {} },
  { "catppuccin/nvim", name = "catppuccin", opts = { transparent_background = true } },
  { "HiPhish/rainbow-delimiters.nvim", main = "rainbow-delimiters.setup", opts = {} },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  {
    -- NOTE: Keys are setup by plugin.
    "otavioschwanck/arrow.nvim",
    opts = { show_icons = true, leader_key = "<leader>h", buffer_leader_key = "m" },
    keys = { { "<leader>h", nil, "n" }, { "m", nil, "n" } },
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
