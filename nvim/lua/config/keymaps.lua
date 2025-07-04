-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Tabs stuff
vim.keymap.set("n", "<leader>tn", "<cmd>bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>tp", "<cmd>bprevious<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>tx", "<cmd>bdelete<CR>", { desc = "Close Buffer" })

-- Window splits
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", { desc = "Horizontal Split" })
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Split" })

-- Clear search highlight
vim.keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Clear Search Highlight" })

-- Use oil as file explorer
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Oil File Explorer" })
vim.keymap.set("n", "<leader>E", require("oil").toggle_float, { desc = "Oil Floating Window" })
