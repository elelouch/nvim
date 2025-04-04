return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        compile = false,             -- enable compiling the colorscheme
        undercurl = false,            -- enable undercurls
        commentStyle = { italic = false },
        functionStyle = {},
        keywordStyle = { italic = false },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,         -- do not set background color
        dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
        terminalColors = true,       -- define vim.g.terminal_color_{0,17}
        colors = {                   -- add/modify theme and palette colors
          palette = {},
          theme = { 
            dragon = {
              ui = {
                bg = "#000000"
              }
            }
          },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = "wave",              -- Load "wave" theme
        background = {               -- map the value of 'background' option to a theme
          dark = "wave",           -- try "dragon" !
          light = "lotus"
        },
      })
      vim.cmd.colorscheme "kanagawa-dragon"
    end
  },
}
