return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 10,
            direction = "horizontal",
            start_in_insert = true,
            close_on_exit = true,
            auto_scroll = true,
            persist_mode = true,
        })
    end,
}
