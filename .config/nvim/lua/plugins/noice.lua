return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        {
            "rcarriga/nvim-notify",
            opts = {
                background_colour = "#000000",
                stages = "static",
            },
        },
    },
    config = function()
        require("noice").setup({
            cmdline = {
                format = {
                    filter = false,
                },
                enabled = true,
                view = "cmdline_popup",
                opts = {},
            },
            views = {
                cmdline_popup = {
                    position = {
                        row = "30%",
                        col = "50%",
                    },
                    size = {
                        width = 60,
                    },
                    border = {
                        style = "rounded",
                    },
                },
            },
            presets = {
                bottom_search = false,
                command_palette = true,
            },
        })
    end,
}
