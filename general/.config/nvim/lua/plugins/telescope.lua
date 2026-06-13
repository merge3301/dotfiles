return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    },
    config = function()
        require("telescope").setup({
            defaults = {
                layout_strategy = "vertical",
                sorting_strategy = "ascending", -- от лучшего к худшему (сверху вниз)
                file_ignore_patterns = { "node_modules", ".git" },
                layout_config = {
                    prompt_position = "top",
                    vertical = {
                        mirror = true,
                        width = 0.8,
                    },
                },
                preview = {
                    hide_on_startup = false, -- показывать превью сразу
                    timeout = 250, -- задержка перед генерацией превью (мс)
                    filesize_limit = 25, -- макс размер файла для превью (MB)
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
            extensions = {},
        })
    end,
}
