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
        n = {
          ["H"] = "preview_scrolling_left",
          ["J"] = "preview_scrolling_down",
          ["K"] = "preview_scrolling_up",
          ["L"] = "preview_scrolling_right",
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
