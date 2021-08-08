vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.signcolumn = "number"
vim.opt.mouse = "a"
vim.opt.completeopt = "menuone,noselect"

vim.g.nord_disable_background = true
vim.g.nord_borders = true

vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_show_icons = {
	git = 0,
	folders = 1,
	files = 1,
	folder_arrows = 1,
}
vim.g.nvim_tree_auto_open = 1

vim.g.cursorhold_updatetime = 300


require('nord').set()
