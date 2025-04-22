---@module "which-key"

return {
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
    keys = {
      { "<leader>h", icon = { cat = "filetype", name = "harpoon" }, desc = "Arrow Marks" },
      { "m", icon = { cat = "filetype", name = "harpoon" }, desc = "Arrow Buffer Marks" },
    },
  },
}
