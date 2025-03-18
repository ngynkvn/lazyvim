---@module "which-key"

return {
  { "ngynkvn/gotmpl.nvim", opts = {}, lazy = true },
  { "HiPhish/rainbow-delimiters.nvim", main = "rainbow-delimiters.setup", opts = {} },
  {
    "otavioschwanck/arrow.nvim",
    -- TODO: make this lazy
    opts = { show_icons = true, leader_key = "<leader>h", buffer_leader_key = "m" },
    keys = function()
      local keys = { { "<leader>h", nil, "n" }, { "m", nil, "n" } }
      require("which-key").add({
        { "<leader>h", icon = { cat = "filetype", name = "harpoon" }, desc = "Arrow Marks" },
        { "m", icon = { cat = "filetype", name = "harpoon" }, desc = "Arrow Buffer Marks" },
      })
      return keys
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
