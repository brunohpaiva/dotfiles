return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end,
    },

    {
        'folke/trouble.nvim',
        opts = {
            icons = false,
        },
    },

    {
        'lewis6991/gitsigns.nvim',
        lazy = true,
        event = 'BufEnter',
        opts = {},
    },

    {
        'folke/lazydev.nvim',
        ft = 'lua',
    },

}
