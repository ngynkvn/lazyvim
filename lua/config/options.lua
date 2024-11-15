-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable relativenumber
vim.opt.relativenumber = false
-- popup max height
vim.opt.pumheight = 0
-- Preferred textwidth
vim.opt.textwidth = 120

--vim.opt.winblend = 10
--vim.opt.pumblend = 10

vim.filetype.add({
  pattern = {
    [".*%.[eg]?bnf"] = "ebnf",
  },
})

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
