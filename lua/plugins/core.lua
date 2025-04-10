---@module "which-key"

return {
  { "ngynkvn/gotmpl.nvim", opts = {}, lazy = true },
  { "ngynkvn/friendly-snippets", branch = "me", enabled = true },
  {
    "julienvincent/hunk.nvim",
    cmd = { "DiffEditor" },
    config = function()
      require("hunk").setup()
    end,
  },
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = { border = "single" },
        documentation = { window = { border = "single" } },
      },
      signature = { window = { border = "single" } },
    },
  },
  {
    "otavioschwanck/arrow.nvim",
    -- TODO: make this lazy
    opts = { show_icons = true, leader_key = "<leader>h", buffer_leader_key = "m" },
    keys = function()
      local keys = { { "<leader>h", nil, "n" }, { "m", nil, "n" } }
      -- which-key configuration moved to which-keys.lua
      return keys
    end,
  },
}
