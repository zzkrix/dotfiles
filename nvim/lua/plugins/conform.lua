return {
    {
        "stevearc/conform.nvim",

        opts = {
            default_format_opts = {
                -- 优先使用非 LSP 的格式化
                lsp_format = "last",
            },
        },
    },
}
