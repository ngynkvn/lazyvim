-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable relativenumber
vim.opt.relativenumber = false
-- popup max height
vim.opt.pumheight = 0
-- Preferred textwidth
vim.opt.textwidth = 120

-- vim.opt.winblend = 5
-- vim.opt.pumblend = 5

vim.filetype.add({
  pattern = {
    [".*%.[eg]?bnf"] = "ebnf",
  },
})

-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "basedpyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"

-- https://github.com/nvim-treesitter/nvim-treesitter/issues/5751#issuecomment-2311310008
-- require("vim.treesitter.query").set(
--   "markdown",
--   "highlights",
--   [[
-- ;From MDeiml/tree-sitter-markdown
-- [
--   (fenced_code_block_delimiter)
-- ] @punctuation.delimiter
-- ]]
-- )
