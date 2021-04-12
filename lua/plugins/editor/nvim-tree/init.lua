Variable.g({
	nvim_tree_side = 'left',
	nvim_tree_width = 30,
	nvim_tree_auto_open = 1,
	nvim_tree_auto_close = 1,
	nvim_tree_follow = 1,
	nvim_tree_git_hl = 1,
	nvim_tree_indent_markers = 1,
	nvim_tree_allow_resize = 1,
	nvim_tree_disable_netrw = 0,
	nvim_tree_hijack_netrw = 0,
	nvim_tree_root_folder_modifier = ':~',
	nvim_tree_ignore = {
		'.git', 
		'node_modules',
		'.cache',
	},
	nvim_tree_show_icons = {
		git = 1,
		folders = 1,
		files = 1
	}
})

local opt = { noremap = true, silent = true }

Keybind.g({
	{ 'n', '<C-b>', ':NvimTreeToggle<CR>', opt },
}) 
