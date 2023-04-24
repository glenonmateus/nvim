local status, whichkey = pcall(require, "which-key")
if not status then
	return
end

whichkey.setup({})

whichkey.register({
	prefix = "<leader>",
	f = {
		name = "File",
		f = { "<cmd>Telescope find_files<cr>", "Find Files" },
		s = { "<cmd>Telescope live_grep<cr>", "Find String" },
		c = { "<cmd>Telescope grep_string<cr>", "Find String Under Cursor" },
		b = { "<cmd>Telescope buffers<cr>", "List Open Buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "List Available Help Tags" },
		l = { "<cmd>Telescope file_browser<cr>", "File Browser" },
	},
	s = {
		name = "Split",
		m = { ":MaximizerToggle<CR>", "Maximizer Toggle" },
	},
	e = {
		name = "Explorer",
		e = { ":NvimTreeToggle<CR>", "File Explorer" },
	},
	p = {
		name = "Mason",
		m = { "<cmd>Mason<CR>", "Open Mason" },
		M = { "<cmd>MasonUpdate<CR>", "Mason Update" },
	},
	l = {
		name = "LSP",
		i = { "<cmd>LspInfo<CR>", "LSP Info" },
	},
})
