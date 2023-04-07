local lsp = require("lsp-zero")
lsp.preset("recommended")

-- to see full list https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
local servers = {"pyright", "tsserver", "lua_ls", "clangd", "html", "jsonls"}
lsp.ensure_installed(servers)

-- Fix Undefined global 'vim'
lsp.configure("lua_ls", {
        settings = {
                Lua = {
                        diagnostics = {
                                globals = { 'vim' }
                        }
                }
        }
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
)

lsp.setup()
