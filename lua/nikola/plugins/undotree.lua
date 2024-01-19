return {
	"mbbill/undotree",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>")
	end,
}
