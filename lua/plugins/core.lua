return {
  { "ngynkvn/gotmpl.nvim", opts = {} },
  { "HiPhish/rainbow-delimiters.nvim", main = "rainbow-delimiters.setup", opts = {} },
  {
    "otavioschwanck/arrow.nvim",
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
    library = {
      "LazyVim",
    },
  },
  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    opts = {
      default_file_explorer = false,
      columns = {
        "icon",
        "permissions",
        "size",
        "mtime",
      },
    },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  },
}
