return {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- загружается при входе в режим вставки
    opts = {
        check_ts = true, -- умная проверка через Treesitter
        fast_wrap = {}, -- быстрое оборачивание выделенного
    },
    config = true,
}
