return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                numbers = "none",
                separator_style = { "", "" },
                show_buffer_close_icons = false,
                show_close_icon = false,
                always_show_bufferline = true,
                indicator = { style = "none" },
            },
            highlights = {
                buffer_selected = {
                    bold = true,
                    italic = false,
                    underline = false,
                },
            },
        })

        local all_groups = vim.api.nvim_get_hl_id_by_name
        for _, group_name in ipairs(vim.fn.getcompletion("BufferLine", "highlight")) do
            vim.api.nvim_set_hl(0, group_name, { bg = "none" })
        end
    end,
}
