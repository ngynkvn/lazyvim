return {
  -- https://github.com/alker0/chezmoi.vim?tab=readme-ov-file#-can-i-use-nvim-treesitter-for-my-chezmoi-template
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        disable = function()
          -- check if 'filetype' option includes 'chezmoitmpl'
          if string.find(vim.bo.filetype, "chezmoitmpl") then
            return true
          end
        end,
      },
    },
  },
}
