return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		terminal = {
			win = {
				-- "float"|"bottom"|"top"|"left"|"right"
				position = "float",

				-- rounded 圆角
				-- single 直角单条边
				-- double 直角两条边
				border = "rounded", -- 边框样式

				height = 0.85,
				width = 0.85,
			},
		},
	},
	keys = {
		{
			"<c-/>",
			function()
				require("snacks").terminal.toggle()
			end,
			desc = "Toggle Floating Terminal",
		},
	},
}
