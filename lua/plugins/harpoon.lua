return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function ()
		require("harpoon").setup({})
		vim.keymap.set("n", "<leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<Cr>", {})
		vim.keymap.set("n", "<leader>m",":lua require('harpoon.mark').add_file()<Cr>", {})
		vim.keymap.set("n", "1",":lua require('harpoon.ui').nav_file(1) <Cr>", {})
		vim.keymap.set("n", "2",":lua require('harpoon.ui').nav_file(2) <Cr>", {})
		vim.keymap.set("n", "3",":lua require('harpoon.ui').nav_file(3) <Cr>", {})
		vim.keymap.set("n", "4",":lua require('harpoon.ui').nav_file(4) <Cr>", {})
		vim.keymap.set("n", "5",":lua require('harpoon.ui').nav_file(5) <Cr>", {})
		vim.keymap.set("n", "6",":lua require('harpoon.ui').nav_file(6) <Cr>", {})
		vim.keymap.set("n", "7",":lua require('harpoon.ui').nav_file(7) <Cr>", {})
		vim.keymap.set("n", "8",":lua require('harpoon.ui').nav_file(8) <Cr>", {})
		vim.keymap.set("n", "<C-n>",":lua require('harpoon.ui').nav_next()  <Cr>", {})
		vim.keymap.set("n", "<C-o>",":lua require('harpoon.ui').nav_prev()  <Cr>", {})
	end
}
