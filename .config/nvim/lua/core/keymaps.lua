vim.keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", {desc = "No highlight"})

vim.keymap.set("n", "<leader>ee", "<cmd>Oil<CR>", {desc = "Open File Finder"})

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", 
  { desc = "Fuzzy find files in cwd" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", 
  { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", 
  { desc = "Find string in cwd" })

vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", {desc = "Next tab"})
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>", {desc = "Previous tab"})
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "New tab"})
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "Close tab"})


vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", {desc = "Split window horizontally"})
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", {desc = "Split window vertically"})
vim.keymap.set("n", "<C-l>", "<C-w>l", {desc = "Move to right split"})
vim.keymap.set("n", "<C-h>", "<C-w>h", {desc = "Move to left split"})
vim.keymap.set("n", "<C-j>", "<C-w>j", {desc = "Move to down split"})
vim.keymap.set("n", "<C-k>", "<C-w>k", {desc = "Move to up split"})

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {desc = "Rename symbol"})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc = "Code actions"})
