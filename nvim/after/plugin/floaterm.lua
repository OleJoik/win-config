
vim.keymap.set("n", "<leader>t", function() 
	local path = vim.fn.expand('%:h')
	path = path.gsub(path, "\\", "/")
	vim.cmd(string.format(":FloatermNew! cd %s & cls", path))
end) 
