return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		require("ibl").setup({
			exclude = {
				filetypes = { "help", "dashboard", "packer", "NvimTree", "Trouble", "TelescopePrompt", "Float" },
				buftypes = { "terminal", "nofile", "telescope" },
			},
			indent = {
				char = "│",
			},
			scope = {
				enabled = false,
				show_start = false,
			},
		})
		-- vim.cmd([[highlight IndentBlanklineIndent1 guifg=#30465d guibg=#14262b gui=nocombine]])
		-- vim.cmd([[highlight IndentBlanklineIndent2 guifg=#30465d guibg=#09262e gui=nocombine]])
		-- vim.cmd([[highlight IndentBlanklineIndent3 guifg=#30465d guibg=#161e37 gui=nocombine]])
		--
		-- require("indent_blankline").setup({
		--   char = "▎",
		--   char_highlight_list = {
		--     "IndentBlanklineIndent1",
		--     "IndentBlanklineIndent2",
		--     "IndentBlanklineIndent3",
		--   },
		--   space_char_highlight_list = {
		--     "IndentBlanklineIndent1",
		--     "IndentBlanklineIndent2",
		--     "IndentBlanklineIndent3",
		--   },
		--   show_trailing_blankline_indent = false,
		-- })
	end,
}

-- return {
-- 	"shellRaining/hlchunk.nvim",
-- 	event = { "BufReadPre", "BufNewFile" },
-- 	config = function()
-- 		require("hlchunk").setup({
-- 			indent = {
-- 				enable = true,
-- 				priority = 1000,
-- 				notify = true,
-- 				style = { vim.api.nvim_get_hl(0, { name = "Whitespace" }) },
-- 				chars = { "│" },
-- 				ahead_lines = 5,
-- 			},
-- 		})
-- 	end,
-- }
