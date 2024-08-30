return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    event = {
      "BufReadPre " .. vim.fn.expand("~") .. "/obsidian/*.md",
      "BufNewFile " .. vim.fn.expand("~") .. "/obsidian/*.md",
    },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/obsidian",
        },
      },
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
      leader_key = "<leader>h", -- Recommended to be a single key
      buffer_leader_key = "m", -- Per Buffer Mappings
    },
  },
  -- God that was so fucking hard to figure out
  {
    "folke/which-key.nvim",
    ---@module 'folke/which-key.nvim'
    ---@param opts wk.Opts
    opts = function(_, opts)
      table.insert(opts.spec, {
        "<leader>h",
        desc = "Arrow",
      })
    end,
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
  -- {
  --   "stevearc/oil.nvim",
  --   opts = {
  --     default_file_explorer = false,
  --   },
  --   -- Optional dependencies
  --   dependencies = { { "echasnovski/mini.icons", opts = {} } },
  --   -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  -- },
}
