vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.syntax = "on"
vim.opt.encoding = "UTF-8"
vim.opt.wrap = false

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.g.mapleader = ' '

vim.opt.termguicolors = true

vim.diagnostic.config({
  virtual_text = {
    severity = { min = vim.diagnostic.severity.WARN },
    prefix = "■",
    format = function(diagnostic)
      return string.format("%s (%s)", diagnostic.message, diagnostic.source)
    end
  },
  signs = false,
})
