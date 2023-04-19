local lsp = require("lsp-zero")
lsp.preset("recommended")

-- to see full list https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
local servers = {"pyright", "tsserver", "lua_ls", "clangd", "html", "jsonls", "rust_analyzer", "bashls", "gopls"}
lsp.ensure_installed(servers)

local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities = vim.tbl_extend('force', lspconfig.util.default_config.capabilities, capabilities)
capabilities = vim.tbl_extend('force', capabilities, vim.lsp.protocol.make_client_capabilities())
capabilities.offsetEncoding = {"utf-8"} -- https://github.com/jose-elias-alvarez/null-ls.nvim/issues/428

for _, server in pairs(servers) do
        lsp.configure(server, {
                capabilities = capabilities,
                root_dir = lspconfig.util.root_pattern(".git"),
        })
end

lsp.configure("clangd", {
        capabilities = capabilities,
        cmd = {
                "clangd",
                "--background-index",
                "--header-insertion=never",
                "--suggest-missing-includes",
                "--clang-tidy",
                "--compile-commands-dir=build"
        },
        root_dir = lspconfig.util.root_pattern(".git"),
        init_options = {
                compilationDatabasePath = "build"
        }
})

-- Fix Undefined global 'vim'
lsp.configure("lua_ls", {
        capabilities = capabilities,
        root_dir = lspconfig.util.root_pattern(".git"),
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
local luasnip = require('luasnip')
cmp.setup({
        mapping = {
                ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                                cmp.select_next_item()
                        elseif luasnip.expand_or_jumpable() then
                                luasnip.expand_or_jump()
                        else
                                fallback()
                        end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                                cmp.select_prev_item()
                        elseif luasnip.jumpable(-1) then
                                luasnip.jump(-1)
                        else
                                fallback()
                        end
                end, { "i", "s" }),
        },
})
cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
)

lsp.setup()
