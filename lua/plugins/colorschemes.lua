return {
  -- Lazy
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    config = function()
      vim.cmd.colorscheme "onedark_dark"
    end
  },
  {
    "rebelot/kanagawa.nvim",
    config=function()
      -- vim.cmd.colorscheme 'kanagawa-dragon'
    end
  }
}
