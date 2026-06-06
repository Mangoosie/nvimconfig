vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>sv", '<cmd>vsplit <CR>')
vim.keymap.set("n", "<leader>sh", '<cmd>split <CR>')
vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", { silent = true})
vim.keymap.set('n', 'gD', '<CMD>Glance definitions<CR>')
vim.keymap.set('n', 'gR', '<CMD>Glance references<CR>')
vim.keymap.set('n', 'gY', '<CMD>Glance type_definitions<CR>')
vim.keymap.set('n', 'gM', '<CMD>Glance implementations<CR>')
