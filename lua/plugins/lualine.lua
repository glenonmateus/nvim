local status, lualine = pcall(require, "lualine")
if not status then
	print("Lualine not found")
	return
end

lualine.setup({
	options = {
		theme = "auto",
	},
})
