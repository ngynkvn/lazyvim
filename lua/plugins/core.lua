return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local cs = require("catppuccin")
        cs.setup({
          flavour = "mocha",
          custom_highlights = function(c)
            return { WinSeparator = { fg = c.surface1 } }
          end,
        })
        cs.load()
      end,
    },
  },
  { "folke/trouble.nvim", opts = { max_items = false } },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
        width = 28,
      },
    },
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
    ---@module 'which-key'
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
