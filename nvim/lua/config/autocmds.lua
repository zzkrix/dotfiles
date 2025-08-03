-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 设置neo-tree的被选中行背景色
-- vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "gray", fg = "white" })
-- vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#264F77", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#2E3A46", fg = "#ffffff" })
-- 在 ~/.config/nvim/lua/config/options.lua 或 init.lua 中添加

-- 创建自动命令组来设置透明背景
local function set_transparency()
	-- 基础透明设置
	vim.cmd([[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight SignColumn guibg=NONE ctermbg=NONE
    highlight LineNr guibg=NONE ctermbg=NONE
    highlight CursorLineNr guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
    highlight NonText guibg=NONE ctermbg=NONE
    highlight VertSplit guibg=NONE ctermbg=NONE
    highlight WinSeparator guibg=NONE ctermbg=NONE

    " Telescope 透明
    highlight TelescopeNormal guibg=NONE ctermbg=NONE
    highlight TelescopeBorder guibg=NONE ctermbg=NONE
    highlight TelescopePromptNormal guibg=NONE ctermbg=NONE
    highlight TelescopePromptBorder guibg=NONE ctermbg=NONE
    highlight TelescopeResultsNormal guibg=NONE ctermbg=NONE
    highlight TelescopeResultsBorder guibg=NONE ctermbg=NONE
    highlight TelescopePreviewNormal guibg=NONE ctermbg=NONE
    highlight TelescopePreviewBorder guibg=NONE ctermbg=NONE

    " 浮动窗口透明
    highlight NormalFloat guibg=NONE ctermbg=NONE
    highlight FloatBorder guibg=NONE ctermbg=NONE
    highlight Pmenu guibg=NONE ctermbg=NONE
    highlight PmenuSel guibg=NONE ctermbg=NONE

    " WhichKey 透明
    highlight WhichKey guibg=NONE ctermbg=NONE
    highlight WhichKeyFloat guibg=NONE ctermbg=NONE

    " NvimTree 透明
    highlight NvimTreeNormal guibg=NONE ctermbg=NONE
    highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
    highlight NvimTreeEndOfBuffer guibg=NONE ctermbg=NONE

    " Mason 透明
    highlight MasonNormal guibg=NONE ctermbg=NONE

    " Lazy 透明
    highlight LazyNormal guibg=NONE ctermbg=NONE

    " BufferLine 透明（如果使用）
    highlight BufferLineFill guibg=NONE ctermbg=NONE
    highlight BufferLineBackground guibg=NONE ctermbg=NONE

    " Lualine 透明（如果使用）
    highlight lualine_a_normal guibg=NONE ctermbg=NONE
    highlight lualine_b_normal guibg=NONE ctermbg=NONE
    highlight lualine_c_normal guibg=NONE ctermbg=NONE

    " Snacks.nvim 相关透明
    highlight SnacksNotifierInfo guibg=NONE ctermbg=NONE
    highlight SnacksNotifierWarn guibg=NONE ctermbg=NONE
    highlight SnacksNotifierError guibg=NONE ctermbg=NONE
    highlight SnacksNotifierDebug guibg=NONE ctermbg=NONE
    highlight SnacksNotifierTrace guibg=NONE ctermbg=NONE
    highlight SnacksDashboard guibg=NONE ctermbg=NONE
    highlight SnacksInput guibg=NONE ctermbg=NONE
  ]])
end

-- 在颜色方案加载后应用透明设置
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = set_transparency,
})

-- 立即应用（用于当前会话）
set_transparency()
