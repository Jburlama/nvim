-- -@diagnostic disable: undefined-global
return {
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",

		config = function()
			require("mason-lspconfig").setup {
				ensure_installed = { "lua_ls", "clangd", "markdown_oxide", "pylsp"},
			}
		end
	},
	{
		"neovim/nvim-lspconfig",

		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			local opts = { buffer = bufnr, noremap = true, silent = true }
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set({ "n" }, '<leader>ca', vim.lsp.buf.code_action, opts)
		end
	}
}
