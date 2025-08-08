return {
	"neovim/nvim-lspconfig",
	opts = {
		-- inlay_hints = { enabled = false },
		servers = {
			gopls = {
				settings = {
					gopls = {
						-- goimports = true,
						-- gofumpt = true,
						analyses = {
							unusedparams = false,
							ST1000 = false,
							ST1020 = false,
							ST1022 = false,
							-- ST1003 = false,
							-- ST1012 = false,
						},

						-- 直接在 gopls 设置中关闭 inlay hints
						hints = {
							assignVariableTypes = false,
							compositeLiteralFields = false,
							compositeLiteralTypes = false,
							constantValues = false,
							functionTypeParameters = false,
							parameterNames = false,
							rangeVariableTypes = false,
						},
					},
				},
			},
		},
	},
}
