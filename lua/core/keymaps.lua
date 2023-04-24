vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("i", "jk", "<ESC>", { desc = "normal mode" })
keymap.set("n", "nh", ":nohl<CR>", { desc = "no highlight" })
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")
keymap.set("n", "sv", "<C-w>v") -- split window vertically
keymap.set("n", "sh", "<C-w>s") -- split window horizontally
keymap.set("n", "se", "<C-w>=") -- make split window equal width
keymap.set("n", "sx", ":close<CR>") -- close current split window
keymap.set("n", "to", ":tabnew<CR>") -- open new tab
keymap.set("n", "tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "tp", ":tabp<CR>") -- go to previous tab
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Salve" }) -- save file
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Exit" }) -- exit
keymap.set("n", "<leader>Q", "<cmd>q!<CR>", { desc = "Exit Without Save" }) -- exit without save
