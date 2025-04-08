return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    scroll = { enabled = false },
    -- see ui.lua for layout config
    explorer = {
      replace_netrw = true,
    },
    picker = { sources = { explorer = { layout = { layout = { position = "right" } } } } },
  },
}
