return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		default_component_configs = {
			indent = {
				with_expanders = false,
				expander_collapsed = "",
				expander_expanded = "",
				expander_highlight = "NeoTreeExpander",
			},
		},

		filesystem = {
			filtered_items = {
				visible = false, -- 显示隐藏文件
				-- hide_dotfiles = false,
				-- show_hidden_count = true,
				-- hide_gitignored = false,
			},
			window = {
				position = "left", -- left, right, top, bottom, float, current
				width = 40, -- applies to left and right positions
				height = 15, -- applies to top and bottom positions
				-- auto_expand_width = true, -- expand the window when file exceeds the window width. does not work with position = "float"

				-- -- 悬浮窗显示
				-- position = "float", -- left, right, top, bottom, float, current
				-- popup = { -- settings that apply to float position only
				-- 	size = {
				-- 		height = "80%",
				-- 		width = "50%",
				-- 	},
				-- 	position = "50%", -- 50% means center it
				-- 	title = function(state)
				-- 		return "Neo-tree " .. state.name:gsub("^%l", string.upper)
				-- 	end,
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
