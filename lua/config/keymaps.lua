-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-x>", vim.lsp.buf.signature_help)

-- floating terminal
local lazyterm = function()
  LazyVim.terminal.open(nil, { cwd = LazyVim.root(), border = "single" })
end
vim.keymap.set("n", "<c-/>", lazyterm, { desc = "Terminal (Root Dir)" })

-- Copy path
vim.api.nvim_create_user_command("CopyPath", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, { desc = "Copy buffer path to clipboard" })
