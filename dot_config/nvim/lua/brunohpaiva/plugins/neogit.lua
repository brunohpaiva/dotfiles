return {
    'NeogitOrg/neogit',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'sindrets/diffview.nvim',
        'nvim-telescope/telescope.nvim',
    },
    lazy = true,
    keys = {
        { '<leader>gi', '<cmd>Neogit<cr>' },
    },
    opts = {
        telescope_sorter = function()
            return require('telescope').extensions.fzf.native_fzf_sorter()
        end,
        integrations = {
            telescope = true,
            diffview = true,
        },
    },
}
