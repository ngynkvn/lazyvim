return {
  "folke/noice.nvim",
  ---@module 'noice'
  ---@param opts NoiceConfig
  opts = function(_, opts)
    opts.lsp.signature = {
      auto_open = { enabled = false },
    }
    vim.list_extend(opts.routes, {
      {
        filter = {
          event = "notify",
          kind = "info",
          any = {
            { find = "Toggling hidden files" },
          },
        },
        opts = { skip = true },
      },
    })
  end,
}
