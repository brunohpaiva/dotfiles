return {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.0',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
        }
    },
    lazy = true,
    keys = {
        { '<leader>ff', '<cmd>Telescope find_files<cr>' },
        { '<leader>fg', '<cmd>Telescope live_grep<cr>' },
    },
    config = function()
        require('telescope').load_extension('fzf')
    end,
}
