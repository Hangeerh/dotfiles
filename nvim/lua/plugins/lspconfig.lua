return {
  "neovim/nvim-lspconfig",
  dependencies = "hrsh7th/cmp-nvim-lsp",
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.pyright.setup({
      capabilities = capabilities,
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "basic",
            autoSearchPaths = true,
            useLibraryCodeForTypes = true
          }
        }
      }
    })
  end
}
