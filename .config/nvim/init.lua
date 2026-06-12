local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "plugins.theme" },
    { import = "plugins.conform" },
    { import = "plugins.mason" },
    { import = "plugins.mason-lspconfig" },
    { import = "plugins.mason-tools" },
    { import = "plugins.autopairs" },
    { import = "plugins.flash" },
    { import = "plugins.lualine" },
    { import = "plugins.nvim-tree" },
    { import = "plugins.telescope" },
    { import = "plugins.comment" },
    { import = "plugins.noice" },
    { import = "plugins.bufferline" },
    { import = "plugins.persistence" },
    -- { import = "plugins.which-key" },
    { import = "plugins.lspconfig" },
    { import = "plugins.nvim-cmp" },
    { import = "plugins.dashboard" },
    { import = "plugins.nvim-treesitter" },
    { import = "plugins.toggleterm" },
})

require("core.keymaps")
require("core.autocmds")
require("core.options")
