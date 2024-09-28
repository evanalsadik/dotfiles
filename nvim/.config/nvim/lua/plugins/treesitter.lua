return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = "p00f/nvim-ts-rainbow",
	main = "nvim-treesitter.configs", -- Sets main module to use for opts
	-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
	config = function()
		require("nvim-treesitter.configs").setup({
			-- basic things
			build = ":TSUpdate",
			indent = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			event = {
				"BufReadPre",
				"BufNewFile",
			},
			ensure_installed = {
				"markdown",
				"markdown_inline",
				"regex",
				"vim",
				"jsonc",
				"javascript",
				"yaml",
				"html",
				"css",
				"bash",
				"lua",
				"dockerfile",
				"gitignore",
				"python",
			},
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn", -- set to `false` to disable one of the mappings
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},

			rainbow = {
				enable = true,
				-- disable = { "jsx", "cpp" }, -- list of languages you want to disable the plugin for
				extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
				max_file_lines = nil, -- Do not enable for files with more than n lines, int
				-- colors = {}, -- table of hex strings
				-- termcolors = {} -- table of colour name strings
			},
		})
	end,
}
