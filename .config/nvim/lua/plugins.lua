vim.pack.add({ "https://github.com/folke/tokyonight.nvim" })
vim.cmd([[colorscheme tokyonight]])

vim.pack.add({"https://github.com/folke/which-key.nvim"})

vim.pack.add({ "https://github.com/stevearc/oil.nvim" })
require("oil").setup({
  default_file_explorer = true,
  columns = {
    "icon",
    "size",
  },
  keymaps = {
    ["<C-h>"] = false,
  },
  view_options = {
    show_hidden = true,
  },
})

vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })
require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        "WinEnter",
        "BufEnter",
        "BufWritePost",
        "SessionLoadPost",
        "FileChangedShellPost",
        "VimResized",
        "Filetype",
        "CursorMoved",
        "CursorMovedI",
        "ModeChanged",
      },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  },
})

vim.pack.add({"https://github.com/windwp/nvim-autopairs"})
vim.pack.add({"https://github.com/lewis6991/gitsigns.nvim"})
vim.pack.add({"https://github.com/nvim-treesitter/nvim-treesitter"})
