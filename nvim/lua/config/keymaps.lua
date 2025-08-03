-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

-- 设置折叠相关的快捷键
vim.keymap.set("n", "<leader>zM", "zM", { desc = "Close all folds" })
vim.keymap.set("n", "<leader>zR", "zR", { desc = "Open all folds" })
vim.keymap.set("n", "<leader>za", "za", { desc = "Switch fold status" })
vim.keymap.set("n", "<leader>zo", "zo", { desc = "Open fold" })
vim.keymap.set("n", "<leader>zc", "zc", { desc = "Close fold" })
vim.keymap.set("n", "<leader>zm", "zm", { desc = "Fold more" })
vim.keymap.set("n", "<leader>zr", "zr", { desc = "Fold less" })

-- 使用新的 which-key.add 方法来组织显示
wk.add({
	{ "<leader>z",  group = "Fold" },
	{ "<leader>zM", desc = "Close all folds" },
	{ "<leader>zR", desc = "Open all folds" },
	{ "<leader>za", desc = "Switch fold status" },
	{ "<leader>zo", desc = "Open fold" },
	{ "<leader>zc", desc = "Close fold" },
	{ "<leader>zm", desc = "Fold more" },
	{ "<leader>zr", desc = "Fold less" },
})
