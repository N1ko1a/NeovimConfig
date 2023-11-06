return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set(
			"n",
			"<leader>a",
			"<cmd>lua require('harpoon.mark').add_file()<cr>",
			{ desc = "Mark file with harpoon" }
		)

		keymap.set(
			"n",
			"<C-e>",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			{ desc = "Toggle harpoon quick menu" }
		)

		keymap.set("n", "<C-v>", function()
			require("harpoon.ui").nav_file(1)
		end, { desc = "Go to the first harpoon mark" })

		keymap.set("n", "<C-b>", function()
			require("harpoon.ui").nav_file(2)
		end, { desc = "Go to the second harpoon mark" })

		keymap.set("n", "<C-n>", function()
			require("harpoon.ui").nav_file(3)
		end, { desc = "Go to the third harpoon mark" })

		keymap.set("n", "<C-m>", function()
			require("harpoon.ui").nav_file(4)
		end, { desc = "Go to the fourth harpoon mark" })

		keymap.set(
			"n",
			"<leader>hn",
			"<cmd>lua require('harpoon.ui').nav_next()<cr>",
			{ desc = "Go to next harpoon mark" }
		)

		keymap.set(
			"n",
			"<leader>hp",
			"<cmd>lua require('harpoon.ui').nav_prev()<cr>",
			{ desc = "Go to previous harpoon mark" }
		)
	end,
}
