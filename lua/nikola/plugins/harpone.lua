return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymaps
		local harpoon = require("harpoon")
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>a", function()
			harpoon:list():append()
		end, { desc = "Mark file with harpoon" })

		keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle harpoon quick menu" })

		keymap.set("n", "<C-v>", function()
			harpoon:list():select(1)
		end, { desc = "Go to the first harpoon mark" })

		keymap.set("n", "<C-b>", function()
			harpoon:list():select(2)
		end, { desc = "Go to the second harpoon mark" })

		keymap.set("n", "<C-n>", function()
			harpoon:list():select(3)
		end, { desc = "Go to the third harpoon mark" })

		keymap.set("n", "<C-m>", function()
			harpoon:list():select(4)
		end, { desc = "Go to the fourth harpoon mark" })
	end,
}
