return {
    -- add gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        opts = {
            -- 设置背景透明度
            -- 需要同时配置iterm2的背景透明度
            transparent_mode = true,
        },
    },

    -- {
    --     "joshdick/onedark.vim",
    -- },

    -- 设置默认主题
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },
}
