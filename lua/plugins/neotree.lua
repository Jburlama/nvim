return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set('n', '<leader>l', ":Neotree filesystem reveal left<Cr>", {})
		vim.keymap.set('n', '<leader>r', ":Neotree filesystem reveal right<Cr>", {})
	end
}
