return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
    },
    opts = {
        automatic_installation = true,
        automatic_installation_setup = true,
    },
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "pyright", -- Python
                "rust_analyzer", -- Rust
                "clangd", -- C/C++
            },
            automatic_installation = true,
        })
    end,
}
