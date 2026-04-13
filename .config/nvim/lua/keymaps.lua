vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "Previous tab" })
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close tab" })

vim.keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "No highlight" })

vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sx", "<C-w>c", { desc = "Close current split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to down split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to up split" })

vim.keymap.set("n", "<leader>ee", "<cmd>Oil<CR>", { desc = "Open File Finder" })

local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fs', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
