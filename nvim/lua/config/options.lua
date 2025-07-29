-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.wrap = true -- 长文本自动换行

opt.expandtab = false -- 使用真实的 tab 字符
opt.shiftwidth = 4 -- 每层缩进为 4 个空格宽
opt.tabstop = 4 -- tab 显示为 4 个空格
opt.softtabstop = 4 -- 按下 tab 时插入 4 个空格或一个 tab
