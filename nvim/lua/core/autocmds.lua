local autocmds = {
        -- {{"BufWritePost"}, {pattern = {*}, callback = function () end}},
}

for _, autocmd in pairs(autocmds) do
        vim.api.nvim_create_autocmd(unpack(autocmd))
end
