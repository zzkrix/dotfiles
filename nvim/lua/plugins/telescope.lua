return {
	"nvim-telescope/telescope.nvim",
	opts = {
		defaults = {
			-- 分层布局
			-- 搜索框在最下方
			layout_strategy = "vertical",
			layout_config = {
				vertical = {
					height = 0.99,
					width = 0.8,
					preview_cutoff = 10,
					prompt_position = "bottom",
				},
			},

			-- 搜索框在左上方
			-- layout_strategy = "horizontal",
			-- sorting_strategy = "ascending", -- 关键：让结果从上往下排
			-- layout_config = {
			-- 	horizontal = {
			-- 		width = 0.99,
			-- 		height = 0.99,
			-- 		preview_width = 0.6,
			-- 		prompt_position = "top",
			-- 		-- preview_cutoff = 120,
			-- 	},
			-- },

			-- 搜索框在左下方
			-- layout_strategy = "horizontal",
			-- layout_config = {
			-- 	horizontal = {
			-- 		width = 0.99,
			-- 		height = 0.99,
			-- 		preview_width = 0.6,
			-- 		prompt_position = "bottom",
			-- 		-- preview_cutoff = 120,
			-- 	},
			-- },
		},
	},
}
