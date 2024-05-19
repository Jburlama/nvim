return {
"voldikss/vim-floaterm",

	config = function ()
		vim.keymap.set("n", "<C-f>", ":FloatermNew --height=1.0 --width=1.0 <Cr>", {})
		vim.keymap.set("t", "<C-f>", "exit<Cr>", {})
	end
}
