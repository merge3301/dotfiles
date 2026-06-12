-- Tabs
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.showmatch = false
vim.opt.list = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

-- Erorrs
vim.opt.visualbell = false
vim.opt.errorbells = false

-- Search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Files
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.autoread = true
vim.opt.fileencodings = "utf-8"

-- Colors
vim.opt.termguicolors = false
vim.opt.background = "dark"
vim.cmd("colorscheme onedark")

vim.opt.shortmess:append("S")
vim.opt.listchars = { tab = "> ", trail = "·" }
vim.opt.fillchars:append({ eob = " " })
vim.opt.conceallevel = 3
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 10
vim.opt.mouse = ""
vim.opt.cmdheight = 0
vim.opt.showcmd = false
