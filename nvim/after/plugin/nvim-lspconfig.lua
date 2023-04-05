local lspconfig = require("lspconfig")

-- to see full list https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
local servers = {"pyright", "tsserver", "lua_ls", "clangd", "html", "jsonls"}
for _, server in pairs(servers) do
	lspconfig[server].setup({})
end
