return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.lsp.signature = {
      auto_open = { enabled = false },
    }
    opts.routes = {
      {
        filter = {
          event = "notify",
          kind = "info",
          any = {
            { find = "hidden" },
          },
        },
        opts = { skip = true },
      },
    }
  end,
}
