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
          event = { "notify", "msg_show" },
          -- NOTE: Lua pattern matching: https://www.lua.org/pil/20.2.html
          any = {
            -- Filter Neo-tree notifications
            { find = "%[Neo%-tree %u+%]" },
            -- lazy.nvim warning
            { find = "# Config Change Detected." },
            -- %d yanked messages
            { find = "%d+ lines yanked" },
            -- deleted lines
            { find = "%d+ fewer lines" },
          },
        },
        view = "mini",
      },
    })
  end,
}
