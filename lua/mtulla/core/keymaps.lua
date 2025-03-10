-- Make <Space> the leader key.
vim.g.mapleader = " "

local keymap = vim.keymap

-- Save file
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>W", ":wa<CR>", { desc = "Save all files" })

-- Quit file
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit file" })
keymap.set("n", "<leader>Q", ":qa<CR>", { desc = "Quit all files" })

-- Move lines up and down in visual line mode.
keymap.set("x", "J", ":m'>+<CR>gv=gv", { desc = "Move line down" })
keymap.set("x", "K", ":m-2<CR>gv=gv", { desc = "Move line up" })

-- Keep cursor in the middle when using <C-d>, <C-u>, and search.
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Allow for pasting without replacing the register
keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without replacing clipboard" })

-- Switch between tabs
keymap.set("n", "<S-h>", "<cmd>tabp<CR>", { desc = "Previous tab" }) -- previous buffer
keymap.set("n", "<S-l>", "<cmd>tabn<CR>", { desc = "Next tab" }) -- next buffer

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>tc", "<cmd>tabnew<CR>", { desc = "Create new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) -- go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) -- go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- move current buffer to new tab

-- Nvim Tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

-- Remove s keymap because I use it with surround.
