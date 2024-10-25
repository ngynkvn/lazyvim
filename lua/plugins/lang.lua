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

-- lang.typescript.lua --
if true then
  vim.list_extend(Config, {
    { import = "lazyvim.plugins.extras.lang.typescript" },
  })
else
  vim.list_extend(Config, {
    -- TODO: broken
    {
      "pmizio/typescript-tools.nvim",
      dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
      opts = {},
    },
    {
      "echasnovski/mini.icons",
      opts = {
        -- stylua: ignore
        file = {
          [".eslintrc.js"]        = { glyph = "󰱺", hl = "MiniIconsYellow" },
          [".node-version"]       = { glyph = "", hl = "MiniIconsGreen"  },
          [".prettierrc"]         = { glyph = "", hl = "MiniIconsPurple" },
          [".yarnrc.yml"]         = { glyph = "", hl = "MiniIconsBlue"   },
          ["eslint.config.js"]    = { glyph = "󰱺", hl = "MiniIconsYellow" },
          ["package.json"]        = { glyph = "", hl = "MiniIconsGreen"  },
          ["tsconfig.json"]       = { glyph = "", hl = "MiniIconsAzure"  },
          ["tsconfig.build.json"] = { glyph = "", hl = "MiniIconsAzure"  },
          ["yarn.lock"]           = { glyph = "", hl = "MiniIconsBlue"   },
        },
      },
    },
  })
end

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
