return {
	{
		"ray-x/go.nvim",

		opts = {
			-- fillstruct = "gopls", -- can be nil (use fillstruct, slower) and gopls
			lsp_inlay_hints = {
				enable = false,
			},
		},

		event = { "CmdlineEnter", "BufRead" },
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
		dependencies = {                                  -- optional packages
			"ray-x/guihua.lua",
		},

		-- 查看 config/keymaps.lua
		-- ⚠️ 统一使用 <leader>cf
		--
		-- keys = {
		-- 	{ "<leader>cg",  "",                      desc = "Golang" },
		-- 	{ "<leader>cgf", "<cmd>GoFillStruct<cr>", desc = "Autofill struct" },
		-- }
	},
}
