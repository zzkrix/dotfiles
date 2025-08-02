return {
    "neovim/nvim-lspconfig",
    opts = {
        -- inlay_hints = { enabled = false },
        servers = {
            gopls = {
                settings = {
                    gopls = {
                        -- goimports = true,
                        -- gofumpt = true,
                        analyses = {
                            unusedparams = false,
                            ST1000 = false,
                            -- ST1003 = false,
                            -- ST1012 = false,
                        },
                    },
                },
            },
        },
    },
}
