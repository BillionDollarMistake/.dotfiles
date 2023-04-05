vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim") -- rtm stands for run-time path
require("lazy").setup({  -- make sure you have run install_lazy.sh first
	{
		"easymotion/vim-easymotion"
	},
	{
		"github/copilot.vim"
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
})	
