return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		filesystem = {
			filtered_items = {
				visible = true, -- 显示隐藏文件
				-- hide_dotfiles = false,
				-- show_hidden_count = true,
				-- hide_gitignored = false,
			},
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
