-- https://www.kernel.org/doc/html/v4.11/process/coding-style.html
local options = {
	number = true,
	relativenumber = true,
	tabstop = 8,
	softtabstop = 8,
	shiftwidth = 8,
	expandtab = true,
        textwidth = 80,
        hlsearch = false,
        scrolloff = 999,
        updatetime = 50,
        showmode = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
