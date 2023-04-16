vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim") -- rtm stands for run-time path
require("lazy").setup({  -- make sure you have run install_lazy.sh first
        {"easymotion/vim-easymotion"},
        {
                "zbirenbaum/copilot.lua",
                event = "InsertEnter",
                dependencies = {
                        "github/copilot.vim",
                },
        },
        {
                "windwp/nvim-autopairs",
                config = function ()
                        require('nvim-autopairs').setup({
                                map_cr = false,
                                map_complete = true,
                        })
                end,
        },
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
