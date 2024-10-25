-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable relativenumber
vim.opt.relativenumber = false
-- popup max height
vim.opt.pumheight = 0
-- Preferred textwidth
vim.opt.textwidth = 100

vim.filetype.add({
  pattern = {
    [".*%.[eg]?bnf"] = "ebnf",
  },
})
