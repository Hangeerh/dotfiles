vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 2

vim.opt.mouse = "a"

vim.opt.clipboard = "unnamedplus"

vim.opt.syntax = "on"
vim.opt.encoding = "UTF-8"

vim.opt.wrap = false

vim.opt.scrolloff = 10

vim.opt.wildignore:append({ "*.o", "*.obj", ".git" })

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.termguicolors = true

vim.opt.timeout = true
vim.opt.timeoutlen = 500

-- Diagnostics and autocompletion
vim.diagnostic.config({
  severity_sort = true,
  update_in_insert = false,
  float = {
    border = "rounded",
    source = "if_many",
  },
  underline = true,
  virtual_text = {
    spacing = 2,
    source = "if_many",
    prefix = "●",
  },
  signs = false,
})
