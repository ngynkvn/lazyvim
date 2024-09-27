return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    opts = function(_, opts)
      local options = opts.options
      options.always_show_bufferline = true
      options.offsets = {}
      return opts
    end,
  },
  {
    "tiagovla/scope.nvim",
    dependencies = "akinsho/bufferline.nvim",
    opts = {},
  },
  --   {
  --     "lualine.nvim",
  --     opts = {},
  --   },
}
