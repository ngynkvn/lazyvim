---@module "which-key"

return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    ---@type wk.Opts
    opts = {
      win = {},
      keys = {
        scroll_down = "<tab>", -- binding to scroll down inside the popup
        scroll_up = "<s-tab>", -- binding to scroll up inside the popup
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)

      wk.add({
        { "<leader>t", group = "tabs", icon = "󰓩" },
        { "<leader>tl", "<cmd>tablast<cr>", desc = "Last Tab" },
        { "<leader>tf", "<cmd>tabfirst<cr>", desc = "First Tab" },
        { "<leader>t]", "<cmd>tabnext<cr>", desc = "Next Tab" },
        { "<leader>t[", "<cmd>tabprevious<cr>", desc = "Previous Tab" },
        { "<leader>tt", "<cmd>tabnew<cr>", desc = "New Tab" },
        { "<leader>td", "<cmd>tabclose<cr>", desc = "Close Tab" },
        { "<leader>to", "<cmd>tabonly<cr>", desc = "Close Other Tabs" },
      })
    end,
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
