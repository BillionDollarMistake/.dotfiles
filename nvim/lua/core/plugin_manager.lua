vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim") -- rtm stands for run-time path
require("lazy").setup({  -- make sure you have run install_lazy.sh first
        {"easymotion/vim-easymotion"},
        {"github/copilot.vim"},
{
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
                {'neovim/nvim-lspconfig'},
                {'williamboman/mason-lspconfig.nvim'},
                {'williamboman/mason.nvim',},
                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'L3MON4D3/LuaSnip'},
        }
}
})
