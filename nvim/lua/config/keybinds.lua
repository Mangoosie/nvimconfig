vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>sv", '<cmd>vsplit <CR>')
vim.keymap.set("n", "<leader>sh", '<cmd>split <CR>')
vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", { silent = true})
