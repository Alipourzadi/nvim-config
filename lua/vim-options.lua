vim.cmd("nnoremap <C-z> <Nop>")

vim.cmd("set encoding=utf-8")
vim.cmd("set termbidi")
vim.cmd("set arabicshape!")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set cursorline")
vim.cmd("set shiftwidth=2")
vim.cmd("set nowrap")
vim.g.mapleader = " "
vim.opt.swapfile = false

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", { silent = true })

vim.g.material_style = "deep ocean"

vim.keymap.set("n", "<leader>i", function()
	-- If we find a floating window, close it.
	local found_float = false
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_get_config(win).relative ~= "" then
			vim.api.nvim_win_close(win, true)
			found_float = true
		end
	end

	if found_float then
		return
	end

	vim.diagnostic.open_float(nil, { border = "rounded", focus = false, scope = "cursor" })
end, { noremap = true, silent = true, desc = "Toggle Diagnostics" })

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.cmd("set number relativenumber")
vim.cmd("set nu rnu")
vim.opt.fillchars = { eob = " " }
