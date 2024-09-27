local keymap = vim.keymap
-- local opts = { noremap = true, silent = true }


vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",  -- Make sure Lazy.nvim has loaded all plugins
    callback = function()
        -- Keymap for Neotree
        keymap.set('n', '<leader>f', '<CMD>Neotree toggle position=left<CR>', { desc = "focus file explorer" })
    end
})

