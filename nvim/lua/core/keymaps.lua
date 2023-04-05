local keymaps = {
        {{"n", "i", "v", "x"}, "<right>", "<nop>", {}},
        {{"n", "i", "v", "x"}, "<left>", "<nop>", {}},
        {{"n", "i", "v", "x"}, "<up>", "<nop>", {}},
        {{"n", "i", "v", "x"}, "<down>", "<nop>", {}},
        {{"n", "v"}, "d", [["_d]], {noremap = true}},
        {{"n", "v"}, "c", [["_c]], {noremap = true}},
}

for _, v in pairs(keymaps) do
        vim.keymap.set(v[1], v[2], v[3], v[4])
end
