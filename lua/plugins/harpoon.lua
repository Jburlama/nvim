return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function ()
		require("harpoon").setup({})
		vim.keymap.set("n", "<leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<Cr>", {})
		vim.keymap.set("n", "<leader>m",":lua require('harpoon.mark').add_file()<Cr>", {})
		vim.keymap.set("n", "<S-m>",":lua require('harpoon.ui').nav_file(1) <Cr>", {})
		vim.keymap.set("n", "<S-h>",":lua require('harpoon.ui').nav_file(2) <Cr>", {})
		vim.keymap.set("n", "<S-o>",":lua require('harpoon.ui').nav_file(3) <Cr>", {})
		vim.keymap.set("n", "<S-t>",":lua require('harpoon.ui').nav_file(4) <Cr>", {})
		-- vim.keymap.set("n", "<S-l>",":lua require('harpoon.ui').nav_next()  <Cr>", {})
		-- vim.keymap.set("n", "<S-j>",":lua require('harpoon.ui').nav_prev()  <Cr>", {})
	end
}
