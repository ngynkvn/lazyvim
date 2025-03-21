-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-x>", function()
  local nldocs = require("noice.lsp.docs")
  local message = nldocs.get("signature")
  nldocs.hide(message)
end)

-- Copy path
vim.api.nvim_create_user_command("CopyPath", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, { desc = "Copy buffer path to clipboard" })

vim.api.nvim_create_user_command("LspAction", function(opts)
  vim.lsp.buf.code_action({
    context = {
      diagnostics = {},
      only = { opts.args },
    },
  })
end, {
  nargs = "?",
  complete = function()
    -- Common code action kinds
    return {
      "quickfix",
      "refactor",
      "refactor.extract",
      "refactor.inline",
      "refactor.rewrite",
      "source",
      "source.organizeImports",
      "source.fixAll",
    }
  end,
})
vim.keymap.set("ca", "rl", "RustLsp")

vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")

vim.keymap.del("n", "<Leader>qq")
