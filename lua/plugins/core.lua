return {
  { "ngynkvn/gotmpl.nvim", opts = {} },
  { "catppuccin/nvim", name = "catppuccin", opts = { transparent_background = true } },
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
    "project.nvim",
    opts = function(_, opts)
      vim.api.nvim_create_user_command("AddProject", function()
        require("project_nvim.project").add_project_manually()
        vim.notify("Added " .. vim.fn.expand("%:p:h", true) .. " as project")
      end, {})
      return opts
    end,
  },
  { "justinsgithub/wezterm-types", lazy = true },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = function(_, opts)
      vim.list_extend(opts.library, { { path = "wezterm-types", mods = { "wezterm" } } })
    end,
  },
  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    opts = { default_file_explorer = false },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  },
}
