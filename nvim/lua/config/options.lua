-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- 长文本自动换行
opt.wrap = true

-- 禁用相对行号
-- opt.relativenumber = false

-- 缩进 & tab & 空格
opt.expandtab = false -- 使用真实的 tab 字符
opt.shiftwidth = 4    -- 每层缩进为 4 个空格宽
opt.tabstop = 4       -- tab 显示为 4 个空格
opt.softtabstop = 4   -- 按下 tab 时插入 4 个空格或一个 tab

-- 禁用鼠标
vim.o.mouse = ""

-- 撤销范围设置成仅限当前打开的buffer，关闭buffer后不再支持撤销
vim.o.undofile = false
