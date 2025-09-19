return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    opts = {},
    config=function()
      local fzf_lua = require("fzf-lua")
      local key = vim.keymap
      fzf_lua.setup {'max-perf'}
      key.set("n", "<leader>ff", fzf_lua.files)
      key.set("n", "<leader>fg", fzf_lua.grep)
      key.set("n", "<leader>fj", fzf_lua.git_files)
      key.set("n", "<leader>fb", fzf_lua.buffers)
    end
  }
}
