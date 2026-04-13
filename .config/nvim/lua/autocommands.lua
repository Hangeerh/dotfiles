vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  callback = function()
    require("nvim-autopairs").setup({
      disable_filetype = { "TelescopePrompt", "vim" },
    })
  end,
})

vim.api.nvim_create_autocmd({ "BufReadPre", "BufNewFile" }, {
  callback = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "┃" },
        change = { text = "┃" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      signs_staged = {
        add = { text = "┃" },
        change = { text = "┃" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
    })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "py" },
  callback = function()
    vim.treesitter.start()
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    -- Setup keymaps for lsp
    local bufnr = args.buf
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
    end

    map("n", "K", vim.lsp.buf.hover, "LSP Hover")
    map("n", "<leader>ld", vim.lsp.buf.definition, "Go to definition")
    map("n", "<leader>lD", vim.lsp.buf.declaration, "Go to declaration")
    map("n", "<leader>li", vim.lsp.buf.implementation, "Go to implementation")
    map("n", "<leader>lR", vim.lsp.buf.references, "References")
    map("n", "<leader>lr", vim.lsp.buf.rename, "Rename symbol")
    map({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, "Code action")
    map("n", "<leader>lf", function()
      vim.lsp.buf.format({ async = true })
    end, "Format buffer")
  end,
})

local blink_group = vim.api.nvim_create_augroup("BlinkCmpLazyLoad", { clear = true })

vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = "*",
  group = blink_group,
  once = true,
  callback = function()
    require("blink.cmp").setup({
      keymap = { preset = "super-tab" },
      appearance = {
        nerd_font_variant = "mono",
        use_nvim_cmp_as_default = true,
      },
      completion = {
        documentation = { auto_show = false },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      fuzzy = { implementation = "lua" },
    })
  end,
})
