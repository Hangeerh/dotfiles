vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.metal",
    callback = function()
        vim.bo.filetype = "metal"
    end,
})
