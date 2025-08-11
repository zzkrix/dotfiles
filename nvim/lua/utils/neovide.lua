local M = {}

function M.init()
	-- vim.print(vim.g.neovide_version)

	vim.o.guifont = "MesloLGS Nerd Font:h18" -- text below applies for VimScript
	-- vim.opt.linespace = 0
	-- vim.g.neovide_scale_factor = 1.0

	-- 窗口透明度和模糊
	vim.g.neovide_opacity = 0.4
	vim.g.transparency = 0.3
	vim.g.neovide_window_blurred = true

	-- 关闭所有动画
	vim.g.neovide_cursor_animation_length = 0.00
	vim.g.neovide_cursor_trail_size = 0
	vim.g.neovide_cursor_animate_in_insert_mode = false
	vim.g.neovide_cursor_animate_command_line = false
	-- vim.g.neovide_scroll_animation_far_lines = 0
	-- vim.g.neovide_scroll_animation_length = 0.00
	-- vim.g.neovide_position_animation_length = 0

	-- 启用复制粘贴(不好用)
	vim.keymap.set('n', '<D-s>', ':w<CR>')   -- Save
	vim.keymap.set('v', '<D-c>', '"+y')      -- Copy
	vim.keymap.set('n', '<D-v>', '"+P')      -- Paste normal mode
	vim.keymap.set('v', '<D-v>', '"+P')      -- Paste visual mode
	vim.keymap.set('c', '<D-v>', '<C-R>+')   -- Paste command mode
	vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
end

return M
