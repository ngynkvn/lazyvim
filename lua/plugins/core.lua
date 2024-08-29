return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.tbl_extend("keep", opts.ensure_installed, {
        "prettier",
        "gofumpt",
        "goimports",
        "gopls",
        "js-debug-adapter",
        "json-lsp",
        "lua-language-server",
        "pyright",
        "ruff",
        "shfmt",
        "stylua",
        "taplo",
        "vtsls",
        "yaml-language-server",
      })
    end,
  },
  {
    "otavioschwanck/arrow.nvim",
    opts = {
      show_icons = true,
      leader_key = ";", -- Recommended to be a single key
      buffer_leader_key = "m", -- Per Buffer Mappings
    },
  },
  -- Lazy
  -- {
  --   "crnvl96/lazydocker.nvim",
  --   event = "VeryLazy",
  --   keys = {
  --     { "\\\\", ":LazyDocker<CR>", desc = "Open lazydocker" },
  --   },
  --   opts = {}, -- automatically calls `require("lazydocker").setup()`
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --   },
  -- },
}
