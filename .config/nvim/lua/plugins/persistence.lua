return {
    "folke/persistence.nvim",
    event = "VeryLazy",
    opts = {
        dir = vim.fn.stdpath("state") .. "/sessions/",
        branch = true,
        need = 1,
    },
    config = function(_, opts)
        require("persistence").setup(opts)

        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                local stat = vim.uv.fs_stat(vim.fn.stdpath("state") .. "/sessions/last")
                if stat then
                    require("persistence").load({ last = true })
                end
            end,
        })
    end,
    keys = {
        {
            "<leader>s",
            function()
                require("persistence").load({ last = true })
            end,
            desc = "Restore last session",
        },
    },
}
