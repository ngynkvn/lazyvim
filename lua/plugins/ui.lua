return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = { options = { always_show_bufferline = true } },
  },
  { "folke/trouble.nvim", opts = { max_items = false } },
  { "tiagovla/scope.nvim", dependencies = "akinsho/bufferline.nvim", opts = {} },
  --{ "lualine.nvim", opts = {}, },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = { window = { position = "float" } },
  },
  {
    "echasnovski/mini.starter",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = "VimEnter",
    opts = function()
      local logo = table.concat({
        [[ //. ///. /////. ///.///// . ///./////. ///./// 
 /// ////.- ---- ///./ --  - ---- ///./// --=- 
 -- >. --  -- >& >. --  -- >& >. . . . --  -- >
-  . -- --  --- -  -- -- -- |  -  | -   - -- | 
 ": " - / - / ./ . - '.-' |  -  - - '$' ---  | 
**/' - - -- '*/**//' - - -- '**//' - - '**//' -
- |  - - .- |  - - .- |  - .- |  - .- |  - .- .
 '.*\.' . '.*\.' . '.*.' . '*.' . . '*.' '*.' *
-- |  - | |  |  -  - |  |  - |  - | -=- -=-- -=
-- ://.//-- -- +://.//-- -- ://.//-- .. -/ - -/
]],
      }, "\n")
      local _section = function(name, action, section)
        return { name = name, action = action, section = section }
      end

      local starter = require("mini.starter")
    --stylua: ignore
    local config = {
      evaluate_single = true,
      header = logo,
      items = {
        starter.sections.recent_files(5, true, true)(),
        _section("Find file",       LazyVim.pick(),                        "Telescope"),
        _section("Config",          LazyVim.pick.config_files(),           "Config"),
        _section("Search text",     LazyVim.pick("live_grep"),             "Telescope"),
        _section("Lazy",            "Lazy",                                "Config"),
        _section("New file",        "ene | startinsert",                   "Built-in"),
        _section("Quit",            "qa",                                  "Built-in"),
        _section("Restore session", [[lua require("persistence").load()]], "Session"),
      },
      content_hooks = {
        starter.gen_hook.adding_bullet("░ ", true),
        starter.gen_hook.aligning("center", "center"),
      },
    }
      return config
    end,
    config = function(_, config)
      -- close Lazy and re-open when starter is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "MiniStarterOpened",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      local starter = require("mini.starter")
      starter.setup(config)

      vim.api.nvim_create_autocmd("User", {
        pattern = "LazyVimStarted",
        callback = function(ev)
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          local pad_footer = string.rep(" ", 8)
          starter.config.footer = pad_footer .. "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
          -- INFO: based on @echasnovski's recommendation (thanks a lot!!!)
          if vim.bo[ev.buf].filetype == "ministarter" then
            pcall(starter.refresh)
          end
        end,
      })
    end,
  },
}
