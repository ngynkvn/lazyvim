return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 202,
      side = "right",
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  },
}
