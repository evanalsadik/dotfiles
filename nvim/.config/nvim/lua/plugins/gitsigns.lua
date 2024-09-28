return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	lazy = false,
	config = function()
		require("gitsigns").setup()
	end,
}
