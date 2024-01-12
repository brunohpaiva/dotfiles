require('brunohpaiva.remap')
require('brunohpaiva.opts')
require('brunohpaiva.lazy')

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('brunohpaiva-group', {}),
	callback = function(e)
		local opts = { buffer = e.buf }
		vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
		vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
	end,
})
