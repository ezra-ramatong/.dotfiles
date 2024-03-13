local M = {
	"akinsho/bufferline.nvim",
	event = "BufEnter",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
}

function M.config()
	local bufferline = require("bufferline")
	bufferline.setup({
		options = {
			themable = true,
			close_command = "bdelete! %d",
			diagnostics = "nvim_lsp",
			indicator = "none",
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "center",
					padding = 2,
					separator = false,
				},
			},
			tab_size = 20,
			separator_style = " thin ",
			always_show_bufferline = false,
			style_preset = {
				bufferline.style_preset.no_italic,
			},
		},
	})
end

return M
