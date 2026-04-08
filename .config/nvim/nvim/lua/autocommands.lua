vim.api.nvim_create_autocmd({"InsertEnter"}, {
  callback = function()
    require("nvim-autopairs").setup({
      disable_filetype = { "TelescoprPrompt", "vim" },
    })
  end
})
