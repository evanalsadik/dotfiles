return {
	-- Hints keybinds
	"folke/which-key.nvim",
	dependencies = { "echasnovski/mini.icons" },
	event = "VeryLazy",
	opts = {
		win = {
			border = {
				{ "┌", "FloatBorder" },
				{ "─", "FloatBorder" },
				{ "┐", "FloatBorder" },
				{ "│", "FloatBorder" },
				{ "┘", "FloatBorder" },
				{ "─", "FloatBorder" },
				{ "└", "FloatBorder" },
				{ "│", "FloatBorder" },
			},
		},
	},
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>b", desc = " Buffers" },
			{ "<leader>l", desc = " Language Server Protocols" },
			{ "<leader>s", desc = " Search" },
			{ "<leader>t", desc = " Tab Settings" },
			{ "<leader>w", desc = " Window Manager" },
		})
	end,
}
