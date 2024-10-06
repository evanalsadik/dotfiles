local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Save file
keymap.set({ "n", "i" }, "<C-s>", "<CMD>w<CR>", opts)
-- keymap.set({ "n", "i" }, "<leader>sn", "<CMD>noautocmd w<CR>", { desc = "Save file without auto-formatting" })

-- Quit editor
keymap.set({ "n", "i" }, "<C-q>", "<CMD>q<CR>", opts)

-- Toggle line wrapping
keymap.set("n", "<C-w>", "<cmd>set wrap!<CR>", { desc = "line [W]rap" })

-- Navigate between splits
keymap.set({ "n", "i" }, "<C-k>", "<CMD>wincmd k<CR>", opts)
keymap.set({ "n", "i" }, "<C-j>", "<CMD>wincmd j<CR>", opts)
keymap.set({ "n", "i" }, "<C-h>", "<CMD>wincmd h<CR>", opts)
keymap.set({ "n", "i" }, "<C-l>", "<CMD>wincmd l<CR>", opts)

-- Selecting
keymap.set({ "n", "i" }, "<C-W>", "viw", opts) -- Select a word
keymap.set({ "n", "i" }, "<C-a>", "gg<S-v>G", opts) -- Select all
keymap.set({ "n", "i" }, "<C-y>", "yaw", opts) -- Select and copy a word
keymap.set({ "n", "i" }, "<C-c>", "viwc", opts) -- Select and edit a word
keymap.set({ "n", "i" }, "<C-d>", "daw", opts) -- Select and cut a word

-- Stay in indent mode
keymap.set({ "n", "v" }, "<", "<gv", opts)
keymap.set({ "n", "v" }, ">", ">gv", opts)

-- Yanking
keymap.set("v", "p", '"_dP', opts) -- Keep last yanked when pasting
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = " Explicitly Yank to system clipboard" })
-- keymap.set("n", "<leader>Y", [["+Y]], { desc = "Explicitly yank to system clipboard" })

-- Clear highlights
keymap.set("n", "<Esc>", ":noh<CR>", opts)

-- Deleting
keymap.set("n", "X", '"_x', opts) -- Delete a single char without copying into register
keymap.set("n", "ds", "dw", opts) -- Delete a single word
keymap.set("n", "db", "vb_d", opts) -- Delete a word backward
keymap.set("n", "df", "D", opts) -- Delete a word forward

-- Buffers
keymap.set("n", "<leader>bn", "<CMD>bnext<CR>", { desc = "next buffer" })
keymap.set("n", "<leader>bp", "<CMD>bprevious<CR>", { desc = "previous buffer" })
keymap.set("n", "<leader>bx", "<CMD>bdelete<CR>", { desc = "close buffer" })
keymap.set("n", "<leader>bb", "<cmd>enew<cr>", { desc = "new buffer" })

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<cr>", { desc = "[O]pen New Tab" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "[C]lose Current Tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<cr>", { desc = "Go To [N]ext Tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<cr>", { desc = "Go To [P]revious Tab" })

-- window management
keymap.set("n", "<leader>wv", "<c-w>v", { desc = "Split window [v]ertical" })
keymap.set("n", "<leader>wh", "<c-w>s", { desc = "Split window [h]orizontal" })
keymap.set("n", "<leader>we", "<c-w>=", { desc = "Make window [E]qual" })
keymap.set("n", "<leader>wx", "<cmd>close<cr>", { desc = "[C]lose Current Split Window" })

-- resize with arrow
keymap.set("n", "<m-up>", "<cmd>resize +2<cr>", opts)
keymap.set("n", "<m-down>", "<cmd>resize -2<cr>", opts)
keymap.set("n", "<m-left>", "<cmd>vertical resize +2<cr>", opts)
keymap.set("n", "<m-right>", "<cmd>vertical resize -2<cr>", opts)

-- move text up and down
keymap.set("v", "<a-j>", ":m .+1<cr>==", opts)
keymap.set("v", "<a-k>", ":m .-2<cr>==", opts)

-- press jk fast to exit insert mode
keymap.set("i", "jk", "<esc>", opts)
keymap.set("i", "kj", "<esc>", opts)

-- disable the spacebar key's default behavior in normal and visual mode
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
