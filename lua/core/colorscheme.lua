local status, _ = pcall(vim.cmd, "colorscheme tender")
if not status then
	print("Colorscheme not found")
	return
end
