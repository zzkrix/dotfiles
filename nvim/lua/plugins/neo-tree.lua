return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		filesystem = {
			filtered_items = {
				visible = false, -- 显示隐藏文件
				-- hide_dotfiles = false,
				-- show_hidden_count = true,
				-- hide_gitignored = false,
			},
			window = { -- see https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/popup
				-- position = "left", -- left, right, top, bottom, float, current
				-- width = 40,    -- applies to left and right positions
				-- height = 15,   -- applies to top and bottom positions
				-- auto_expand_width = false, -- expand the window when file exceeds the window width. does not work with position = "float"
				-- popup = {      -- settings that apply to float position only
				-- 	size = {
				-- 		height = "80%",
				-- 		width = "50%",
				-- 	},
				-- 	position = "50%", -- 50% means center it
				-- 	title = function(state) -- format the text that appears at the top of a popup window
				-- 		return "Neo-tree " .. state.name:gsub("^%l", string.upper)
				-- 	end,
				-- 	-- you can also specify border here, if you want a different setting from
				-- 	-- the global popup_border_style.
				-- },
			}
		},
		event_handlers = {
			-- 显示相对行号
			-- {
			-- 	event = "neo_tree_buffer_enter",
			-- 	handler = function()
			-- 		vim.opt_local.relativenumber = true
			-- 	end,
			-- },

			-- -- 当文件被打开时，自动关闭文件管理器
			-- {
			-- 	event = "file_open_requested",
			-- 	handler = function()
			-- 		require("neo-tree.command").execute({ action = "close" })
			-- 	end,
			-- },

			{
				event = "git_status_changed", -- 监听 Git 状态变化
				handler = function()
					require("neo-tree.sources.manager").refresh("filesystem")
				end,
			},
		},
	},
}
