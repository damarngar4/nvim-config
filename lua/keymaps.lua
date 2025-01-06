vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)

vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal toggle right<CR>")
vim.keymap.set("n", "<leader>pc", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>f", ":Neotree focus<CR>")

vim.keymap.set("n", "<leader>fx", vim.lsp.buf.format, {})
vim.keymap.set("n", "<tab>", ":BufferNext<CR>")
vim.keymap.set("n", "<S-tab>", ":BufferPrevious<CR>")
vim.keymap.set("n", "<C-w>", ":BufferClose<CR>")
