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

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.textwidth = 80
    vim.opt_local.formatoptions:append("t")
  end,
})
