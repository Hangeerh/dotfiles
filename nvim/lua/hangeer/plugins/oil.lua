return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      columns = {
        "icon",
        "size"
      },
      keymaps = {
        ["<C-h>"] = false,
      },
      view_options = {
        show_hidden = true
      }
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>ee", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    keymap.set("n", "<leader>ef", require('oil').toggle_float, { desc = "Open parent directory in floating window" })
  end
}
