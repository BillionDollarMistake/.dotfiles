-- https://www.kernel.org/doc/html/v4.11/process/coding-style.html
local o = vim.opt
local options = {
        iskeyword = o.iskeyword + "-" + "_";
        cursorline = true,
        cursorlineopt = "screenline",
        pumheight = 7,
        swapfile = false,
	number = true,
	relativenumber = true,
	tabstop = 8,
	softtabstop = 8,
	shiftwidth = 8,
	expandtab = true,
        textwidth = 80,
        hlsearch = false,
        scrolloff = 999,
        updatetime = 200,
        showmode = false,
        clipboard = o.clipboard + "unnamedplus" + "unnamed",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
