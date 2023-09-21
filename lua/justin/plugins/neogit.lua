return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"sindrets/diffview.nvim",
		"ibhagwan/fzf-lua",
	},
	config = function()
		local neogit = require('neogit')
		neogit.setup{}
		vim.keymap.set("n","<leader>gs", vim.cmd.Neogit)
	end
}
