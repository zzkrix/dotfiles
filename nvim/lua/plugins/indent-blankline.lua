-- copy from ~/.local/share/nvim/lazy/LazyVim/lua/lazyvim/plugins/extras/ui
--
-- -- 禁用区域标记动画
--
-- return {
-- 	-- disable snacks indent when indent-blankline is enabled
-- 	{
-- 		"snacks.nvim",
-- 		opts = {
-- 			indent = { enabled = false },
-- 		},
-- 	},
-- 	{
-- 		"lukas-reineke/indent-blankline.nvim",
-- 		event = "LazyFile",
-- 		opts = function()
-- 			Snacks.toggle({
-- 				name = "Indention Guides",
-- 				get = function()
-- 					return require("ibl.config").get_config(0).enabled
-- 				end,
-- 				set = function(state)
-- 					require("ibl").setup_buffer(0, { enabled = state })
-- 				end,
-- 			}):map("<leader>ug")
--
-- 			return {
-- 				indent = {
-- 					char = "│",
-- 					tab_char = "│",
-- 				},
-- 				scope = { show_start = false, show_end = false },
-- 				exclude = {
-- 					filetypes = {
-- 						"Trouble",
-- 						"alpha",
-- 						"dashboard",
-- 						"help",
-- 						"lazy",
-- 						"mason",
-- 						"neo-tree",
-- 						"notify",
-- 						"snacks_dashboard",
-- 						"snacks_notif",
-- 						"snacks_terminal",
-- 						"snacks_win",
-- 						"toggleterm",
-- 						"trouble",
-- 					},
-- 				},
-- 			}
-- 		end,
-- 		main = "ibl",
-- 	},
-- }

-- 这个也可以禁用，不知道为啥🤷
return {
	-- Active indent guide and indent text objects. When you're browsing
	-- code, this highlights the current level of indentation, and animates
	-- the highlighting.
	{
		"echasnovski/mini.indentscope",
		version = false, -- wait till new 0.7.0 release to put it back on semver
		event = "LazyFile",
		opts = {
			-- symbol = "▏",
			symbol = "│",
			options = { try_as_border = true },
		},
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"Trouble",
					"alpha",
					"dashboard",
					"fzf",
					"help",
					"lazy",
					"mason",
					"neo-tree",
					"notify",
					"snacks_dashboard",
					"snacks_notif",
					"snacks_terminal",
					"snacks_win",
					"toggleterm",
					"trouble",
				},
				callback = function()
					vim.b.miniindentscope_disable = true
				end,
			})

			vim.api.nvim_create_autocmd("User", {
				pattern = "SnacksDashboardOpened",
				callback = function(data)
					vim.b[data.buf].miniindentscope_disable = true
				end,
			})
		end,
	},

	-- disable inent-blankline scope when mini-indentscope is enabled
	{
		"lukas-reineke/indent-blankline.nvim",
		optional = true,
		event = "LazyFile",
		opts = {
			scope = { enabled = false },
		},
	},

	-- disable snacks scroll when mini-indentscope is enabled
	{
		"snacks.nvim",
		opts = {
			indent = {
				scope = { enabled = false },
			},
		},
	},
}
