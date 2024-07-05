return {
	"j-hui/fidget.nvim",
	config = function()
		require("fidget").setup({
			notification = {
				window = {
					winblend = 0, -- Background color opacity in the notification window
				},
			},
		})
	end,
}
