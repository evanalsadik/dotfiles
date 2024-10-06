return {
	"akinsho/toggleterm.nvim",
	lazy = false,
	opts = {
		size = 20,
		open_mapping = [[<c-t>]],
		hide_numbers = true,
		shade_filetypes = {},
		shade_terminals = true,
		shading_factor = 2,
		start_in_insert = true,
		insert_mappings = true,
		persist_size = true,
		direction = "horizontal",
		close_on_exit = true,
		shell = vim.o.shell,
		float_opts = {
			border = "curved",
			winblend = 0,
			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},
	},
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-t>]],
			shade_terminals = false,
			shell = "zsh --login",
		})
	end,
}
