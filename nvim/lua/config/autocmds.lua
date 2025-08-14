-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- karrabiner 拦截`ctrl h/j/k/l`映射成了⬅️/⬇️/⬆️/➡️。
--
-- 要使`cmd k`在 kiity 终端和 lazyvim terminal buffer 中都有效，需要在 kitty 配置中增加一行
-- map cmd+k send_text all \x0c
--
-- 若不使用 karabiner 的拦截可以不添加上面配置，同时放开下面的注释，达到同样效果。
--
-- vim.api.nvim_create_autocmd("TermOpen", {
-- 	callback = function()
-- 		vim.keymap.set("t", "<D-k>", "<C-l>", { buffer = true, noremap = true })
-- 	end,
-- })

-- -- 设置自动保存
-- vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
-- 	pattern = { "*" },
-- 	command = "silent! wall",
-- 	nested = true,
-- })

-- 只读模式打开目录之外的文件，防止误操作（更改标准库等操作）
local function get_project_root()
    local cwd = vim.fn.getcwd()
    return cwd
end

local function is_in_project(filepath)
    local project_root = get_project_root()
    return filepath:find(project_root, 1, true) == 1
end

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    callback = function()
        local filepath = vim.fn.expand("%:p")
        if filepath ~= "" and not is_in_project(filepath) then
            vim.bo.readonly = true
            vim.bo.modifiable = false
            -- vim.notify("readonly: File out of current project!\n" .. filepath .. "\n" .. vim.fn.getcwd() .. "\n",
            -- vim.log.levels.WARN)
        else
            vim.bo.readonly = false
            vim.bo.modifiable = true
        end
    end,
})

-- 设置 neo-tree 的被选中行背景色
-- vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "gray", fg = "white" })
-- vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#264F77", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#2E3A46", fg = "#ffffff" })

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

    " 补全菜单 - 保留一些背景色以确保可读性
    highlight Pmenu guibg=#1e1e2e guifg=#cdd6f4 ctermbg=236 ctermfg=251
    highlight PmenuSel guibg=#585b70 guifg=#cdd6f4 ctermbg=240 ctermfg=251
    highlight PmenuSbar guibg=#313244 ctermbg=237
    highlight PmenuThumb guibg=#585b70 ctermbg=240

    " LSP 补全相关
    highlight CmpItemAbbrDeprecated guibg=NONE guifg=#7c7d83 gui=strikethrough
    highlight CmpItemAbbrMatch guibg=NONE guifg=#82aaff
    highlight CmpItemAbbrMatchFuzzy guibg=NONE guifg=#82aaff
    highlight CmpItemMenu guibg=NONE guifg=#c792ea
    highlight CmpItemKind guibg=NONE guifg=#f78c6c

	" OneDark 主题补全菜单
    highlight Pmenu guibg=#21252b guifg=#abb2bf ctermbg=235 ctermfg=249
    highlight PmenuSel guibg=#2c313c guifg=#61afef ctermbg=236 ctermfg=75 gui=bold cterm=bold
    highlight PmenuSbar guibg=#181a1f ctermbg=234
    highlight PmenuThumb guibg=#4b5263 ctermbg=240

    " CMP 补全相关颜色（OneDark 风格）
    highlight CmpItemAbbrDeprecated guibg=NONE guifg=#5c6370 gui=strikethrough
    highlight CmpItemAbbrMatch guibg=NONE guifg=#61afef gui=bold
    highlight CmpItemAbbrMatchFuzzy guibg=NONE guifg=#61afef
    highlight CmpItemMenu guibg=NONE guifg=#56b6c2
    highlight CmpItemKind guibg=NONE guifg=#e06c75

    " 补全类型颜色（符合 OneDark 配色）
    highlight CmpItemKindFunction guifg=#e5c07b
    highlight CmpItemKindMethod guifg=#c678dd
    highlight CmpItemKindVariable guifg=#61afef
    highlight CmpItemKindClass guifg=#e06c75
    highlight CmpItemKindKeyword guifg=#c678dd
    highlight CmpItemKindSnippet guifg=#98c379
    highlight CmpItemKindConstant guifg=#98c379
    highlight CmpItemKindEnum guifg=#e06c75
    highlight CmpItemKindStruct guifg=#e06c75
  ]])
end

-- 在颜色方案加载后应用透明设置
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = set_transparency,
})

-- 立即应用（用于当前会话）
-- set_transparency()
