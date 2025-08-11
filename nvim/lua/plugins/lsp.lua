return {
	{ import = "plugins/lsp/go" },

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

				-- 排除这些文件类型
				-- ⚠️ 同时需要修改lsp目录下对应语言的inlay hints配置
				exclude = { "go" },
			},

			-- `<leader> cd` 错误信息加上边框
			diagnostics = {
				float = {
					border = "rounded",
				},
			},

			-- 管理lint规则
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
