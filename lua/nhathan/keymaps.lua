-- Leader key is <Space>, defined in init.lua
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split windows
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move windows
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Greatest remap ever (Paste over selection without yanking)
keymap.set("x", "p", "P")

-- Using delete without yank
keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yank" })

-- Using change without yank
keymap.set({ "n", "v" }, "c", '"_c', { desc = "Change without yank" })
keymap.set({ "n", "v" }, "C", '"_C', { desc = "Change without yank" })

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Go to start-of-line/end-of-line
keymap.set("n", "H", "0")
keymap.set("n", "L", "$")

-- Scrolling
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Move line in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")