local keymap = vim.keymap
-- local remap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Save file 
keymap.set({ "n", "i" }, "<C-s>", "<CMD>w<CR>", opts)
keymap.set({ "n", "i" }, "<leader>sn", "<CMD>noautocmd w<CR>", { desc = "Save file without auto-formatting" })

-- Quit editor
keymap.set({ "n", "i" }, "<C-q>", "<CMD>q<CR>", opts)

-- Selecting
keymap.set("n", "<C-f>", "viw", opts)      -- Select a word
keymap.set("n", "<C-a>", "gg<S-v>G", opts) -- Select all
keymap.set("n", "<C-y>", "yaw", opts)      -- Select and copy a word
keymap.set("n", "<C-c>", "viwc", opts)     -- Select and edit a word
keymap.set("n", "<C-d>", "daw", opts)      -- Select and cut a word

-- Deleting
keymap.set("n", "X", '"_x', opts)          -- Delete a single char without copying into register
keymap.set("n", "ds", "dw", opts)          -- Delete a single word
keymap.set("n", "db", "vb_d", opts)        -- Delete a word backward
keymap.set("n", "df", "D", opts)           -- Delete a word forward

-- Indentation
keymap.set("n", "<leader>_", "<<", { desc = "Left indentation" }) -- Left indentation
keymap.set("n", "<leader>+", ">>", { desc = "Right indentation" }) -- Right indentation

-- Buffers
keymap.set("n", "<Tab>", "<CMD>bnext<CR>", opts)
keymap.set("n", "<S-Tab>", "<CMD>bprevious<CR>", opts)
keymap.set("n", "<leader>x", "<CMD>Bdelete!<CR>", { desc = "close buffer" })
keymap.set("n", "<leader>b", "<CMD>enew<CR>", { desc = "new buffer" })

-- Window management
keymap.set("n", "<leader>v", "<C-w>v", { desc = "split window vertical" })
keymap.set("n", "<leader>h", "<C-w>s", { desc = "split window horizontal" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make window equal" })
keymap.set("n", "<leader>xs", "<CMD>close<CR>", { desc = "close window" })

-- Resize with arrow 
keymap.set("n", "<Up>", "<CMD>resize -2<CR>", opts)
keymap.set("n", "<Down>", "<CMD>resize +2<CR>", opts)
keymap.set("n", "<Left>", "<CMD>vertical resize -2<CR>", opts)
keymap.set("n", "<Right>", "<CMD>vertical resize +2<CR>", opts)

-- Disable the spacebar key's default behavior in normal and visual mode
keymap.set({"n", "v"}, "<Space>", "<Nop>",{ silent = true })
