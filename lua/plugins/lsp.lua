local Config = {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}

-- lang.go.lua --
local gopls = {
  settings = { gopls = { analyses = { fieldalignment = false } } },
  filetypes = { "go", "gomod", "gowork" },
}
vim.list_extend(Config, {
  {
    "neovim/nvim-lspconfig",
    opts = { servers = { gopls = gopls } },
  },
})

-- lang.zig.lua --
vim.list_extend(Config, {
  {
    "nvim-treesitter/nvim-treesitter",
    init = function()
      -- don't show parse errors in a separate window
      vim.g.zig_fmt_parse_errors = false
      -- disable format-on-save from `ziglang/zig.vim`
      vim.g.zig_fmt_autosave = false
    end,
    opts = { ensure_installed = { "zig" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = { servers = { zls = { mason = false } } },
  },
})

-- lang.lua --
return Config
