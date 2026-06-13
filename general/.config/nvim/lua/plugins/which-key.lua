return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        -- настройки по умолчанию
    },
    keys = {
        {
            "<Leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
}
