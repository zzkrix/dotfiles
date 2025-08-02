-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 设置neo-tree的被选中行背景色
-- vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "gray", fg = "white" })
-- vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#264F77", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#2E3A46", fg = "#ffffff" })
