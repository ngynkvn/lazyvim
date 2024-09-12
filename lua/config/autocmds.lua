-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- NOTE: Zig auto fmt: https://zigtools.org/zls/install/#nvim-lspconfig
-- `vim.cmd [[autocmd BufWritePre *.zig lua vim.lsp.buf.format()]]`
local zig_augroup = vim.api.nvim_create_augroup("zig-autofmt", {})
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = zig_augroup,
  pattern = { "*.zig" },
  callback = function()
    vim.lsp.buf.format()
  end,
})
