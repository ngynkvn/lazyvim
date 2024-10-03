local M = {}
M.find_command = function()
  if 1 == vim.fn.executable("rg") then
    return { "rg", "--files", "--color", "never", "-g", "!.git" }
  elseif 1 == vim.fn.executable("fd") then
    return { "fd", "--type", "f", "--color", "never", "-E", ".git" }
  elseif 1 == vim.fn.executable("fdfind") then
    return { "fdfind", "--type", "f", "--color", "never", "-E", ".git" }
  elseif 1 == vim.fn.executable("find") and vim.fn.has("win32") == 0 then
    return { "find", ".", "-type", "f" }
  elseif 1 == vim.fn.executable("where") then
    return { "where", "/r", ".", "*" }
  end
end

return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-u>"] = false,
          ["<C-d>"] = false,
          ["<C-f>"] = false,
          ["<C-b>"] = false,
          ["<C-h>"] = "preview_scrolling_left",
          ["<C-j>"] = "preview_scrolling_down",
          ["<C-k>"] = "preview_scrolling_up",
          ["<C-l>"] = "preview_scrolling_right",
        },
      },
    },
    pickers = {
      colorscheme = {
        enable_preview = true,
      },
      find_files = {
        find_command = M.find_command,
        hidden = true,
      },
    },
  },
}
