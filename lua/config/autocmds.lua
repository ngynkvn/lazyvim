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
  desc = "Auto format on save",
})

-- Turn on relative numbering when in visual mode
local relnum_augroup = vim.api.nvim_create_augroup("relnum", {})
vim.api.nvim_create_autocmd({ "ModeChanged" }, {
  group = relnum_augroup,
  pattern = "*:[V\x16]*",
  callback = function()
    vim.wo.relativenumber = vim.wo.number
  end,
  desc = "Show relative line numbers",
})

vim.api.nvim_create_autocmd({ "ModeChanged" }, {
  group = relnum_augroup,
  pattern = "[V\x16]*:*",
  -- Hide relative numbers when neither linewise/blockwise mode is on
  callback = function()
    vim.wo.relativenumber = string.find(vim.fn.mode(), "^[V\22]") ~= nil
  end,
  desc = "Hide relative line numbers",
})

---------------------------------------------------------------------------------

vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff" })
