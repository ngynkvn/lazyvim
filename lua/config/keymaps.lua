-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-x>", vim.lsp.buf.signature_help)

-- Copy path
vim.api.nvim_create_user_command("CopyPath", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, { desc = "Copy buffer path to clipboard" })

vim.api.nvim_create_user_command("LspAction", function(opts)
  vim.lsp.buf.code_action({
    context = {
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
