local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("i", "nn", "<ESC>", { desc = "Normal mode" })
map("n", "<Leader>n", ":nohlsearch<CR>", { desc = "Off search highlight" })

map("n", "<Leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<Leader>q", ":q<CR>", { desc = "Quit" })
map("n", "<Leader>x", ":x<CR>", { desc = "Save file and quit" })
map("n", "<Leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle explorer" })

map("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to bottom split" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to top split" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

map("n", "|", ":vsplit<CR>")
map("n", "\\", ":split<CR>")

local builtin = require("telescope.builtin")
map("n", "<leader>f", builtin.find_files, { desc = "Find files (root dir)" })
map("n", "<leader>g", builtin.live_grep, { desc = "Live grep (root dir)" })
map("n", "<leader>b", builtin.buffers, { desc = "Find buffers" })

map("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
map("n", "<Leader>d", ":bdelete<CR>", { desc = "Close buffer" })

map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move to left split" })
map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move to bottom split" })
map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move to bottom split" })
map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move to bottom split" })

map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Normal mode" })
map("t", "nn", [[<C-\><C-n>]], { desc = "Normal mode" })
map("n", "<Leader>t", ":ToggleTerm<CR>", { desc = "Toggle terminal" })
