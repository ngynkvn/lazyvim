return {
  -- only for editing
  { "rktjmp/lush.nvim", enabled = false, cmd = { "LushImport", "LushRunTutorial", "Lushify" } },
  { "ayu-theme/ayu-vim", enabled = false },
  { "projekt0n/github-nvim-theme", enabled = false },
  --require("themes/modded-gruvbox"),
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      --transparent = true,
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },

      --- You can override specific highlights to use other groups or a hex color
      --- function will be called with a Highlights and ColorScheme table
      ---@module "tokyonight"
      ---@param highlights tokyonight.Highlights
      on_highlights = function(highlights, _)
        highlights.WinSeparator = { fg = "#817ca8" }
        -- highlights.Normal = {}
        -- highlights.NormalNC = {}
      end,
    },
  },
  --{ "catppuccin/nvim", name = "catppuccin", opts = { transparent_background = true } },
}
