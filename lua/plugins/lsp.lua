return {
  "neovim/nvim-lspconfig",
  config=function()
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local bufnr = args.buf
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id), "must have valid client")

        vim.opt_local.omnifunc = "v:lua.vim.lsp.omnifunc"
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
        vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = 0 })
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
        vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
        vim.keymap.set("n", "<space>rf", vim.lsp.buf.rename, { buffer = 0 })
        vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = 0 })

        -- local filetype = vim.bo[bufnr].filetype
        -- if disable_semantic_tokens[filetype] then
        --   client.server_capabilities.semanticTokensProvider = nil
        -- end
      end,
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lspconfig = require('lspconfig')

    -- Enable some language servers with the additional completion capabilities offered by nvim-cmp
    local servers = {'basedpyright', 'ruff'}
    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
        -- on_attach = my_custom_on_attach,
        capabilities = capabilities,
      }
    end
  end
}
