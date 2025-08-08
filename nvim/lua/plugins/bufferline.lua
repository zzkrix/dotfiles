return {
	{
		"akinsho/bufferline.nvim",
		opts = {
			options = {
				always_show_bufferline = true,
				show_buffer_close_icons = false,

				-- tabs模式下，只显示一个buffer标签
				-- mode = "buffers", -- set to "tabs" to only show tabpages instead
				-- 当前焦点所在buffer的提示符
				indicator = {
					icon = '💥', -- this should be omitted if indicator style is not 'icon'
					style = 'icon', --'icon' | 'underline' | 'none',
				},

				-- indicator = {
				-- 	icon = '🏷️', -- this should be omitted if indicator style is not 'icon'
				-- 	style = 'icon', --'icon' | 'underline' | 'none',
				-- },

				max_name_length = 30, -- 每个 buffer 名称最大显示长度
				max_prefix_length = 15, -- 如果有相同文件名时的前缀显示长度
				tab_size = 0, -- buffer 宽度自适应

				-- separator_style = "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
				separator_style = { '', '' },

				-- 配置文件管理器上方位置
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neo-tree",
						highlight = "Directory",
						text_align = "left",
						separator = "",
					},
				},
			},
		},
	},
}
