return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	-- config = function()
	-- 	require("nvim-tree").setup {}
	-- end,
	opts = {
		auto_close = true,
		sync_root_with_cwd = true,
	}
}
