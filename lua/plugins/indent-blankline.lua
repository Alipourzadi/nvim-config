return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hlchunk").setup({
			indent = {
				enable = true,
				priority = 1000,
				notify = true,
				style = { vim.api.nvim_get_hl(0, { name = "Whitespace" }) },
				chars = { "│" },
				ahead_lines = 5,
			},
		})
	end,
}
