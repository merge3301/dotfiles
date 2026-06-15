return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "ruff_format" },
            rust = { "rustfmt" },
            cpp = { "clang-format" },
            javascript = { "prettierd", "prettier" },
            typescript = { "prettierd", "prettier" },
            html = { "prettierd", "prettier" },
            css = { "prettierd", "prettier" },
            json = { "prettierd", "prettier" },
            toml = { "taplo" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
    },
}
