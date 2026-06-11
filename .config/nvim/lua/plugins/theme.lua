return {
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
        config = function()
            require("onedarkpro").setup({
                options = {
                    cursorline = false,
                    transparency = true,
                    terminal_colors = true,
                },
                highlights = {
                    Keyword = { bold = true },
                }
            })
        end,
    },
}
