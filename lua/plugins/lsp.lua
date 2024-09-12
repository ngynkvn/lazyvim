--TODO: need to fix LSP custom settings
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              analyses = { fieldalignment = false },
            },
          },
        },
      },
    },
  },
  -- Obsidian
  -- {
  --   "epwalsh/obsidian.nvim",
  --   version = "*", -- recommended, use latest release instead of latest commit
  --   lazy = true,
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   event = {
  --     "BufReadPre " .. vim.fn.expand("~") .. "/obsidian/*.md",
  --     "BufNewFile " .. vim.fn.expand("~") .. "/obsidian/*.md",
  --   },
  --   dependencies = {
  --     -- Required.
  --     "nvim-lua/plenary.nvim",
  --   },
  --   opts = {
  --     workspaces = {
  --       {
  --         name = "personal",
  --         path = "~/obsidian",
  --       },
  --     },
  --   },
  -- },
  -- Chezmoi
  -- https://github.com/alker0/chezmoi.vim?tab=readme-ov-file#-can-i-use-nvim-treesitter-for-my-chezmoi-template
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     highlight = {
  --       disable = function()
  --         -- check if 'filetype' option includes 'chezmoitmpl'
  --         if string.find(vim.bo.filetype, "chezmoitmpl") then
  --           return true
  --         end
  --       end,
  --     },
  --   },
  -- },
  -- {
  --   "xvzc/chezmoi.nvim",
  --   init = false,
  -- },
}
