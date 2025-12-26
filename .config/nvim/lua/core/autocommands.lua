vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.metal",
  callback = function()
    vim.bo.filetype = "metal"
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = ".mm",
  callback = function()
    vim.bo.filetype = "objc"
  end,
})
