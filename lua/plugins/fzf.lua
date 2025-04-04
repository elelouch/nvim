return {
  {
    "ibhagwan/fzf-lua",
    config=function()
      local fzf = require('fzf-lua')
      fzf.setup {
          winopts = { preview = { hidden = true } }
      }
      vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'fzf find files' })
      vim.keymap.set('n', '<leader>fj', fzf.git_files, { desc = 'fzf find files' })
      vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = 'fzf live grep' })
      vim.keymap.set('n', '<leader>fb', fzf.buffers, { desc = 'fzf buffers' })
      vim.keymap.set('n', '<leader>fh', fzf.help_tags, { desc = 'fzf help tags' })
    end
  }
}
