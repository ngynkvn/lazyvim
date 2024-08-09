return {
  "stevearc/conform.nvim",
  opts = {
    default_format_opts = {
      async = true,
      lsp_format = "fallback", -- not recommended to change
    },
    formatters_by_ft = {
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
    },
  },
}
