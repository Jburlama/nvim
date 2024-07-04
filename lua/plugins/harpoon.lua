return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function ()
		require("harpoon").setup({})
		vim.keymap.set("n", "<leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<Cr>", {})
		vim.keymap.set("n", "<leader>mh",":lua require('harpoon.mark').add_file()<Cr>", {})
		vim.keymap.set("n", "a",":lua require('harpoon.ui').nav_file(1) <Cr>", {})
		vim.keymap.set("n", "b",":lua require('harpoon.ui').nav_file(2) <Cr>", {})
		vim.keymap.set("n", "d",":lua require('harpoon.ui').nav_file(3) <Cr>", {})
		vim.keymap.set("n", "e",":lua require('harpoon.ui').nav_file(e) <Cr>", {})
		vim.keymap.set("n", "<C-m>",":lua require('harpoon.ui').nav_next()  <Cr>", {})
		vim.keymap.set("n", "<C-o>",":lua require('harpoon.ui').nav_prev()  <Cr>", {})
	end
}
