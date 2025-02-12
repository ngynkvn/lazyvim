return {
  "folke/noice.nvim",
  ---@module 'noice'
  ---@param opts NoiceConfig
  opts = function(_, opts)
    opts.lsp.signature = {
      auto_open = { enabled = true },
    }
    opts.presets.lsp_doc_border = true ---@diagnostic disable-line: assign-type-mismatch
    opts.presets.long_message_to_split = true ---@diagnostic disable-line: assign-type-mismatch

    -- NOTE: The 'find' definitions use Lua pattern matching: https://www.lua.org/pil/20.2.html
    vim.list_extend(opts.routes, {
      ---@see NoiceConfigViews
      ---@type NoiceRouteConfig
      {
        view = "notify",
        filter = { event = "msg_show", kind = "echo", find = "%(mini%.align%)" },
        opts = { title = "mini.align", replace = true },
      },
      {
        view = "mini",
        filter = {
          event = { "notify", "msg_show" },
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
      },
    })
  end,
}
