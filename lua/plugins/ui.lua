return {
  -- lazy.nvim
  -- {
  --   "comfysage/cuddlefish.nvim",
  --   config = function()
  --     require("cuddlefish").setup({
  --       theme = {
  --         accent = "pink",
  --       },
  --       editor = {
  --         transparent_background = false,
  --       },
  --       style = {
  --         tabline = { "reverse" },
  --         search = { "italic", "reverse" },
  --         incsearch = { "italic", "reverse" },
  --         types = { "italic" },
  --         keyword = { "italic" },
  --         comment = { "italic" },
  --       },
  --       overrides = function(colors)
  --         return {}
  --       end,
  --     })
  --
  --     vim.cmd.colorscheme([[cuddlefish]])
  --   end,
  -- },
  {
    "ibhagwan/fzf-lua",
    opts = {
      winopts = {
        layout = "horizontal",
        backdrop = 95,
        width = 0.95,
        height = 0.8,
        row = 0.5,
      },
    },
  },
}
