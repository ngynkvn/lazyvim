return {
  -- only for editing
  { "rktjmp/lush.nvim", cmd = { "LushImport", "LushRunTutorial", "Lushify" } },
  --require("themes/modded-gruvbox"),
  {
    "folke/tokyonight.nvim",
    enabled = true,
    opts = {
      style = "night",
      --transparent = true,

      --- You can override specific highlights to use other groups or a hex color
      --- function will be called with a Highlights and ColorScheme table
      ---@module "tokyonight"
      ---@param highlights tokyonight.Highlights
      on_highlights = function(highlights, _)
        highlights.WinSeparator = { fg = "#817ca8" }
        highlights.Normal = {}
        highlights.NormalNC = {}
      end,
    },
  },
  --{ "catppuccin/nvim", name = "catppuccin", opts = { transparent_background = true } },
}
