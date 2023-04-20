vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim") -- rtm stands for run-time path
require("lazy").setup({                                          -- make sure you have run install_lazy.sh first
	{ "easymotion/vim-easymotion" },
	{ "ray-x/lsp_signature.nvim" },
	{ "liuchengxu/vista.vim", },
	{
		"zbirenbaum/copilot.lua",
		event = "InsertEnter",
		dependencies = {
			"github/copilot.vim",
		},
	},
        { "nvim-treesitter/nvim-treesitter", },
	{ "windwp/nvim-autopairs", },
	{
		'VonHeikemen/lsp-zero.nvim',
		dependencies = {
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason-lspconfig.nvim' },
			{ 'williamboman/mason.nvim', },
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}
})
