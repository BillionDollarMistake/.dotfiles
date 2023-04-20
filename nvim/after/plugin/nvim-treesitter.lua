require("nvim-treesitter.configs").setup({
        ensure_installed = {"typescript", "c", "cpp", "python", "lua", "go", "html", "css", "json", "rust"},
})

local o = vim.o
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldnestmax = 1
-- o.foldenable = false
