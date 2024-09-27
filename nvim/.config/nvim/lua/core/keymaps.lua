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

-- Press jk fast to exit insert mode
keymap.set('i', 'jk', '<ESC>', opts)
keymap.set('i', 'kj', '<ESC>', opts)

-- Selecting
keymap.set("n", "<C-f>", "viw", opts)      -- Select a word
keymap.set("n", "<C-a>", "gg<S-v>G", opts) -- Select all
keymap.set("n", "<C-y>", "yaw", opts)      -- Select and copy a word
keymap.set("n", "<C-c>", "viwc", opts)     -- Select and edit a word
keymap.set("n", "<C-d>", "daw", opts)      -- Select and cut a word

-- Yanking
keymap.set('v', 'p', '"_dP', opts) -- Keep last yanked when pasting
keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = "Explicitly yank to system clipboard" })
keymap.set('n', '<leader>Y', [["+Y]], { desc = "Explicitly yank to system clipboard" })

-- Clear highlights
keymap.set('n', '<Esc>', ':noh<CR>', opts)

-- Deleting
keymap.set("n", "X", '"_x', opts)          -- Delete a single char without copying into register
keymap.set("n", "ds", "dw", opts)          -- Delete a single word
keymap.set("n", "db", "vb_d", opts)        -- Delete a word backward
keymap.set("n", "df", "D", opts)           -- Delete a word forward

-- Indentation
keymap.set("n", "<leader>_", "<<", { desc = "Left indentation" })
keymap.set("n", "<leader>+", ">>", { desc = "Right indentation" })

-- Stay in indent mode
keymap.set('v', '<', '<gv', opts)
keymap.set('v', '>', '>gv', opts)

-- Buffers
keymap.set("n", "<Tab>", "<CMD>bnext<CR>", opts)
keymap.set("n", "<S-Tab>", "<CMD>bprevious<CR>", opts)
keymap.set("n", "<leader>x", "<CMD>Bdelete!<CR>", { desc = "close buffer" })
keymap.set("n", "<leader>b", "<CMD>enew<CR>", { desc = "new buffer" })

-- Tabs
keymap.set('n', '<leader>to', '<CMD>tabnew<CR>', { desc = "open new tab" })
keymap.set('n', '<leader>tx', '<CMD>tabclose<CR>', { desc = "close current tab" })
keymap.set('n', '<leader>tn', '<CMD>tabn<CR>', { desc = "go to next tab" })
keymap.set('n', '<leader>tp', '<CMD>tabp<CR>', { desc = "go to previous tab" })

-- Window management
keymap.set("n", "<leader>v", "<C-w>v", { desc = "split window vertical" })
keymap.set("n", "<leader>h", "<C-w>s", { desc = "split window horizontal" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make window equal" })
keymap.set("n", "<leader>xs", "<CMD>close<CR>", { desc = "close current split window" })

-- Navigate between splits
keymap.set('n', '<C-k>', '<CMD>wincmd k<CR>', opts)
keymap.set('n', '<C-j>', '<CMD>wincmd j<CR>', opts)
keymap.set('n', '<C-h>', '<CMD>wincmd h<CR>', opts)
keymap.set('n', '<C-l>', '<CMD>wincmd l<CR>', opts)

-- Resize with arrow 
keymap.set("n", "<A><Up>", "<CMD>resize +2<CR>", opts)
keymap.set("n", "<A><Down>", "<CMD>resize -2<CR>", opts)
keymap.set("n", "<A><Left>", "<CMD>vertical resize +2<CR>", opts)
keymap.set("n", "<A><Right>", "<CMD>vertical resize -2<CR>", opts)

-- Move text up and down
keymap.set('v', '<A-j>', ':m .+1<CR>==', opts)
keymap.set('v', '<A-k>', ':m .-2<CR>==', opts)

-- toggle line wrapping
keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', { desc = "line wrap" })

-- Disable the spacebar key's default behavior in normal and visual mode
keymap.set({"n", "v"}, "<Space>", "<Nop>",{ silent = true })
