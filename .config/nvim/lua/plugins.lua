vim.pack.add({ "https://github.com/folke/tokyonight.nvim" })
vim.cmd([[colorscheme tokyonight]])

vim.pack.add({ "https://github.com/folke/which-key.nvim" })

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

vim.pack.add({ "https://github.com/windwp/nvim-autopairs" })
vim.pack.add({ "https://github.com/lewis6991/gitsigns.nvim" })
vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })
vim.pack.add({ "https://github.com/nvim-tree/nvim-web-devicons" })
require("nvim-web-devicons").setup()

-- Lsp
vim.pack.add({ "https://github.com/mason-org/mason.nvim" })
vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })
vim.pack.add({ "https://github.com/mason-org/mason-lspconfig.nvim" })
vim.pack.add({ "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" })
-- Must be done in this order
require("mason").setup()
require("mason-tool-installer").setup({
  ensure_installed = {
    "lua_ls",
    "basedpyright",
    "ts_ls",
    "jsonls",
    "stylua",
    "prettier",
  },
})
-- Overrides begin here
vim.lsp.config("lua_ls", {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if
        path ~= vim.fn.stdpath("config")
        and (vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc"))
      then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using (most
        -- likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
        -- Tell the language server how to find Lua modules same way as Neovim
        -- (see `:h lua-module-load`)
        path = {
          "lua/?.lua",
          "lua/?/init.lua",
        },
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          -- Depending on the usage, you might want to add additional paths
          -- here.
          -- '${3rd}/luv/library',
          -- '${3rd}/busted/library',
        },
        -- Or pull in all of 'runtimepath'.
        -- NOTE: this is a lot slower and will cause issues when working on
        -- your own configuration.
        -- See https://github.com/neovim/nvim-lspconfig/issues/3189
        -- library = vim.api.nvim_get_runtime_file('', true),
      },
    })
  end,
  settings = {
    Lua = {},
  },
})
-- Overrides end here
require("mason-lspconfig").setup({
  automatic_enable = false,
})
vim.lsp.enable({
  "lua_ls",
  "basedpyright",
  "jsonls",
  "stylua",
  "prettier",
})

vim.pack.add({"https://github.com/saghen/blink.cmp"})

vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
})
