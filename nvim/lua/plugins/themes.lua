return {
	-- 透明度插件，开启所有主题的透明背景
	{ "xiyaowong/transparent.nvim", lazy = false },

	{ "ellisonleao/gruvbox.nvim" },

	{ "joshdick/onedark.vim" },

	-- 设置默认主题
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "onedark",
		},
	},
}
