return {
    "hotoo/pangu.vim",

    -- 给以下类型文本中的中英文之间加上空格
    ft = { "go", "python", "lua", "markdown", "markdown.mdx", "text" },

    config = function()
        vim.g.pangu_rule_spacing = 1
        vim.g.pangu_rule_date = 1

        -- 方式 1：仅手动`ctrl + s`触发，`:w`和`ZZ`不触发
        -- vim.keymap.set({ "n", "i" }, "<C-s>", function()
        --     vim.cmd("PanguAll")
        --     vim.cmd("write")
        -- end, { desc = "PanGu format & save" })

        -- 方式 2：任何方式的保存都会被触发
        -- 不开启 vim 自动保存时，推荐该方式
        -- ⚠️ 开启 vim 自动保存时，编辑文本会实时触发 ⚠️
        vim.api.nvim_create_autocmd("BufWritePre", {
            callback = function()
                vim.cmd("PanguAll")
            end,

            -- 用来给自动命令分组并防止重复注册，方便后续清理或覆盖。
            group = vim.api.nvim_create_augroup("PanguAutoFormat", { clear = true }),
        })
    end,
}
