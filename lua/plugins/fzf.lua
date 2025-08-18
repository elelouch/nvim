return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    opts = {},
    config=function()
      local fzf = require("fzf-lua")
      local key = vim.keymap
      key.set("n", "<leader>ff", fzf.files, { buffer = 0 })
      key.set("n", "<leader>fg", fzf.grep, { buffer = 0 })
      key.set("n", "<leader>fj", fzf.git_files, { buffer = 0 })
    end
  }
}
