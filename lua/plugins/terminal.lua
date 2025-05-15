return {
	-- Better terminal integration
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({})
		end,
    keys = {
      {"<C-`>", "<cmd>ToggleTerm<cr>", desc = "toggle terminal"},
      {"<C-`>", "<cmd>ToggleTerm<cr>", mode = 't', desc = "toggle terminal"},
      {"<Esc>", "<C-\\><C-n>", mode = 't', desc = "escape terminal"},
      {"<C-[>", "<C-\\><C-n>", mode = 't', desc = "escape terminal"},
    },
	},
}
