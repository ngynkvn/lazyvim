return {
  { "ngynkvn/gotmpl.nvim", opts = {}, lazy = true },
  { "HiPhish/rainbow-delimiters.nvim", main = "rainbow-delimiters.setup", opts = {} },
  {
    "otavioschwanck/arrow.nvim",
    -- TODO: make this lazy
    opts = { show_icons = true, leader_key = "<leader>h", buffer_leader_key = "m" },
    keys = function()
      local keys = { { "<leader>h", nil, "n" }, { "m", nil, "n" } }
      require("which-key").add({
        { "<leader>h", icon = { cat = "filetype", name = "harpoon" }, desc = "Arrow Marks" },
        { "m", icon = { cat = "filetype", name = "harpoon" }, desc = "Arrow Buffer Marks" },
      })
      return keys
    end,
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    cmd = "LazyDev",
    library = { "LazyVim" },
  },
  {
    "stevearc/oil.nvim",
    opts = {
      default_file_explorer = true,
      columns = {
        "icon",
        "permissions",
        "size",
        "mtime",
      },
    },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  },
  {
    "epwalsh/obsidian.nvim",
    enabled = false,
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    -- ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    event = {
      --
      -- NOTE:
      --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
      --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
      --   -- refer to `:h file-pattern` for more examples
      --   "BufReadPre path/to/my-vault/*.md",
      --   "BufNewFile path/to/my-vault/*.md",
      --
      "BufReadPre "
        .. vim.fn.expand("~")
        .. "/obsidian/**/*.md",
    },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "Obsidian",
          path = "~/obsidian",
        },
      },
    },
  },
}
