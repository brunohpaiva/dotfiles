return {
    'neovim/nvim-lspconfig',
    dependencies = {
        { 'mason-org/mason.nvim', opts = {} },
        'mason-org/mason-lspconfig.nvim',
        { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
        require('mason-lspconfig').setup({
            ensure_installed = {
                'lua_ls',
                'ts_ls',
                'gopls',
                'golangci_lint_ls',
                'rust_analyzer',
            },
        })

        vim.diagnostic.config({ virtual_text = true })
    end
}
