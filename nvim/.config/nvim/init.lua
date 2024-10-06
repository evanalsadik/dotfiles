-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 1 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.

require("core.keymaps")
require("core.options")
require("core.plugin-keymaps")

-- Import color theme based on environment variable NVIM_THEME
local default_color_scheme = "carbonfox"
local env_var_nvim_theme = os.getenv("NVIM_THEME") or default_color_scheme

-- Define a table of theme modules
local themes = {
	carbonfox = "plugins.themes.carbonfox",
	nord = "plugins.themes.nord",
	onedark = "plugins.themes.onedark",
}

-- Setup plugins
require("lazy").setup({
	require(themes[env_var_nvim_theme]),
	require("plugins.neo-tree"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.lsp"),
	require("plugins.lualine"),
	require("plugins.whichkey"),
	require("plugins.toggleterm"),
	require("plugins.misc"),
	require("plugins.autocmp"),
	require("plugins.autoformat"),
	require("plugins.gitsigns"),
	require("plugins.indent-blankline"),
})
