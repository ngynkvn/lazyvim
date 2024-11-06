if true then
  return {}
end
return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, 1, {
      require("noice").api.status.message.get_hl,
      cond = require("noice").api.status.message.has,
    })
  end,
}
