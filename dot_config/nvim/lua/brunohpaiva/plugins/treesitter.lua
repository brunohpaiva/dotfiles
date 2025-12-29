return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        -- FIXME: move to build?
        require('nvim-treesitter').install({
            'lua', 'go', 'comment',
            'dockerfile', 'markdown', 'sql',
            'rust',
        })

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(ctx)
                pcall(vim.treesitter.start, ctx.buf)
            end,
        })
    end
}
