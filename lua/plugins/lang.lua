-- lang.go.lua --
local go = {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = { gopls = { analyses = { fieldalignment = false } } },
          filetypes = { "go", "gomod", "gowork" },
        },
      },
    },
  },
}
-- lang.typescript.lua --
local typescript = {}
if true then
  typescript = { import = "lazyvim.plugins.extras.lang.typescript" }
else
  -- TODO: broken
  typescript = {
    {
      "pmizio/typescript-tools.nvim",
      dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
      opts = {},
    },
    {
      "echasnovski/mini.icons",
      opts = {
        file = {
          [".eslintrc.js"] = { glyph = "󰱺", hl = "MiniIconsYellow" },
          [".node-version"] = { glyph = "", hl = "MiniIconsGreen" },
          [".prettierrc"] = { glyph = "", hl = "MiniIconsPurple" },
          [".yarnrc.yml"] = { glyph = "", hl = "MiniIconsBlue" },
          ["eslint.config.js"] = { glyph = "󰱺", hl = "MiniIconsYellow" },
          ["package.json"] = { glyph = "", hl = "MiniIconsGreen" },
          ["tsconfig.json"] = { glyph = "", hl = "MiniIconsAzure" },
          ["tsconfig.build.json"] = { glyph = "", hl = "MiniIconsAzure" },
          ["yarn.lock"] = { glyph = "", hl = "MiniIconsBlue" },
        },
      },
    },
  }
end
-- lang.zig.lua --
local zig = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "zig" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = { servers = { zls = { mason = false } } },
  },
}
-- lang.lua --
local C = {}
vim.list_extend(C, go)
vim.list_extend(C, typescript)
vim.list_extend(C, zig)
return C
