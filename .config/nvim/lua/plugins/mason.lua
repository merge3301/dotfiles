-- ~/.config/nvim/lua/plugins/mason.lua

return {
    "williamboman/mason.nvim",
    opts = {
        ui = {
            border = "rounded",
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
        max_concurrent_installers = 10,
    },
}
