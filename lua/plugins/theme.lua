---@module "tokyonight"
return {
  -- only for editing
  { "rktjmp/lush.nvim", cmd = { "LushImport", "LushRunTutorial", "Lushify" } },
  --require("themes/modded-gruvbox"),
  {
    "folke/tokyonight.nvim",
    enabled = true,
    opts = {
      style = "night",
      transparent = true,

      --- You can override specific highlights to use other groups or a hex color
      --- function will be called with a Highlights and ColorScheme table
      ---@param highlights tokyonight.Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors)
        colors.bg = ""
        highlights.WinSeparator = { fg = "#817ca8" }
      end,
    },
  },
  --{ "catppuccin/nvim", name = "catppuccin", opts = { transparent_background = true } },
}
