return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup()
		vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>", { silent = true })
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], {})
	end,
}
