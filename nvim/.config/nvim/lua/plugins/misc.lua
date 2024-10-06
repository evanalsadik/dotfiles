return { -- Standalone plugins with less than 10 lines of config go here
	{
		-- tmux & split window navigation
		"christoomey/vim-tmux-navigator",
	},
	{
		-- autoclose tags
		"windwp/nvim-ts-autotag",
	},
	{
		-- detect tabstop and shiftwidth automatically
		"tpope/vim-sleuth",
	},
	-- {
	--   -- Powerful Git integration for Vim
	--   'tpope/vim-fugitive',
	-- },
	-- {
	--   -- GitHub integration for vim-fugitive
	--   'tpope/vim-rhubarb',
	-- },
	{
		-- Autoclose parentheses, brackets, quotes, etc.
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {},
	},
	{
		-- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
	},
	{
		"machakann/vim-highlightedyank",
		lazy = false,
	},
	{
		"leath-dub/snipe.nvim",
		keys = {
			{
				"tb",
				function()
					require("snipe").open_buffer_menu()
				end,
				desc = "Open Snipe buffer menu",
			},
		},
		opts = {
			navigate = {
				-- When the list is too long it is split into pages
				-- `[next|prev]_page` options allow you to navigate
				-- this list
				next_page = "J",
				prev_page = "K",

				-- You can also just use normal navigation to go to the item you want
				-- this option just sets the keybind for selecting the item under the
				-- cursor
				under_cursor = "<cr>",

				-- In case you changed your mind, provide a keybind that lets you
				-- cancel the snipe and close the window.
				cancel_snipe = "jk",
			},
		},
	},
}
