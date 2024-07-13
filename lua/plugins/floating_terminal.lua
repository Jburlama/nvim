return {
	"voldikss/vim-floaterm",

	config = function ()
		vim.keymap.set("n", "<C-n>", ":FloatermNew --height=1.0 --width=1.0 <Cr>", {})
		vim.keymap.set("n", "<C-t>", ":FloatermToggle<Cr>", {})
		vim.keymap.set("t", "<C-t>", "<C-\\><C-n>:FloatermToggle<Cr>", {})
		-- vim.keymap.set("t", "<C-n>", "<C-\\><C-n>", {})
		vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {})

	end
}
