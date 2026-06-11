return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- Функция on_attach для всех серверов
        local on_attach = function(client, bufnr)
            local bufopts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set("n", "ld", vim.lsp.buf.definition, bufopts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
            vim.keymap.set("n", "li", vim.lsp.buf.implementation, bufopts)
            vim.keymap.set("n", "lr", vim.lsp.buf.references, bufopts)
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
            vim.keymap.set("n", "<leader>E", vim.diagnostic.open_float, bufopts)
        end

        vim.lsp.config.pyright = {
            cmd = { "pyright-langserver", "--stdio" },
            filetypes = { "python" },
            root_markers = { "pyproject.toml", "setup.py", "requirements.txt", ".git" },
            capabilities = capabilities,
            on_attach = on_attach,
        }

        vim.lsp.config["rust-analyzer"] = {
            cmd = { "rust-analyzer" },
            filetypes = { "rust" },
            root_markers = { "Cargo.toml", ".git" },
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                ["rust-analyzer"] = {
                    cargo = { allFeatures = true },
                    procMacro = { enable = true },
                },
            },
        }

        vim.lsp.config.clangd = {
            cmd = { "clangd" },
            filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
            root_markers = { "compile_commands.json", ".clangd", ".git" },
            capabilities = capabilities,
            on_attach = on_attach,
        }

        vim.diagnostic.config({
            signs = false,
            virtual_text = true,
            underline = true,
            update_in_insert = false,
        })
    end,
}
