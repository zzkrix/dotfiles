return {
	{
		"neovim/nvim-lspconfig",

		dependencies = {
			{
				"saghen/blink.cmp",
				opts = {
					-- 给提示信息加边框
					completion = {
						menu = {
							-- 可选值：nil, 'none', 'single', 'double', 'rounded', 'solid', 'shadow'
							border = 'rounded',
						},
						documentation = {
							window = {
								border = "rounded",
							},
						},
					},
					signature = {
						window = {
							border = "rounded",
						},
					},
				},
			}
		},

		opts = {
			inlay_hints = {
				enabled = true, -- 全局启用
				exclude = { "go" }, -- 排除这些文件类型
			},

			servers = {
				gopls = {
					settings = {
						gopls = {
							analyses = {
								unusedparams = false,
								ST1000 = false,
								ST1020 = false,
								ST1021 = false,
								ST1022 = false,
							},
						},
					},
				},
			},
		},
	}
}
