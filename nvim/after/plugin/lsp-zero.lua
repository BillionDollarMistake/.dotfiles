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

lsp.setup()
