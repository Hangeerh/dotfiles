vim.api.nvim_create_autocmd({"InsertEnter"}, {
  callback = function()
    require("nvim-autopairs").setup({
      disable_filetype = { "TelescopePrompt", "vim" },
    })
  end
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
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {"c","cpp","py"},
  callback = function()
    vim.treesitter.start()
  end
})
