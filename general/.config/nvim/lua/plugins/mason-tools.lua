-- ~/.config/nvim/lua/plugins/mason-tools.lua

return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
        "williamboman/mason.nvim",
    },
    opts = {
        ensure_installed = {
            "stylua",
            "ruff",
            "clang-format",
            "prettierd",
            "prettier",
        },
        auto_update = true,
        run_on_start = true,
    },
}
