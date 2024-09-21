-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable relativenumber
vim.opt.relativenumber = false
-- sync buffers automatically
vim.opt.autoread = true
-- disable neovim generating a swapfile and showing the error
vim.opt.swapfile = false
-- popup max height
vim.opt.pumheight = 0

-- don't show parse errors in a separate window
vim.g.zig_fmt_parse_errors = false
-- disable format-on-save from `ziglang/zig.vim`
vim.g.zig_fmt_autosave = false

vim.treesitter.query.add_directive("inject-go-tmpl!", function(_, _, bufnr, _, metadata)
  local fname = vim.fs.basename(vim.api.nvim_buf_get_name(bufnr))
  local _, _, ext, _ = string.find(fname, ".*%.(%a+)(%.%a+)")
  metadata["injection.language"] = ext
end, {})

vim.filetype.add({
  extension = {
    tmpl = "gotmpl",
  },
})
