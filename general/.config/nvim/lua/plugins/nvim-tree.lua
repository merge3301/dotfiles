return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            git = {
                enable = false,
            },
            sort = { sorter = "case_sensitive" },
            view = { width = 30 },
            renderer = { group_empty = true },
            filters = { dotfiles = true },
        })
    end,
}
