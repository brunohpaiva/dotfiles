return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = false,
        priority = 1000,
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
        'ThePrimeagen/harpoon',
        dependencies = 'nvim-lua/plenary.nvim',
    },

    {
        'lewis6991/gitsigns.nvim',
        lazy = true,
        event = 'BufEnter',
        opts = {},
    },

}
