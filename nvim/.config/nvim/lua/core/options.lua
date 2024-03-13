local opt = vim.opt
local g = vim.g

-- reset mapleader
g.mapleader = " "

opt.autoindent = true
opt.breakindent = true
opt.clipboard = "unnamedplus"
opt.cmdheight = 1
opt.completeopt = { "menuone", "noselect" }
opt.cindent = true
--opt.copyindent = true
opt.colorcolumn = "120"
--opt.cursorline = true
opt.expandtab = true
opt.fillchars = { eob = " " }
opt.formatoptions:append("t/")
--opt.guicursor = 'n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkon0-Cursor/lCursor'
--opt.guifont = { "Hack Nerd Font", ":h20" }
opt.history = 100
opt.hidden = false
opt.ignorecase = true
opt.infercase = true
opt.laststatus = 3
opt.linebreak = true
opt.mouse = "a"
opt.number = true
--opt.preserveindent = true
opt.pumheight = 10
opt.relativenumber = true
opt.scrolloff = 8
opt.shiftwidth = 2
opt.showmode = false
opt.showtabline = 2
opt.scrolloff = 20
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.tabstop = 2
opt.termguicolors = true
opt.textwidth = 120
opt.timeout = true
opt.timeoutlen = 300
opt.undofile = true
opt.updatetime = 300
opt.virtualedit = "block"
opt.winbar = " "
opt.wrap = true
opt.writebackup = false

g.icons_enabled = true
g.loaded_perl_provider = 0
g.html_indent_style1 = "auto"

-- Netrw options
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.netrw_banner = 0
g.netrw_keepdir = 0
g.netrw_cursor = 0
g.netrw_fastbrowse = 0
g.netrw_winsize = 20
g.netrw_hide = 1

-- Closetag options
g.closetag_filetypes = "html,js,typescriptreact, javascriptreact"
g.closetag_emptyTags_caseSensitive = 1
g.closetag_regions = {
	["typescript.tsx"] = "jsxRegion,tsxRegion",
	["javascript.jsx"] = "jsxRegion",
}
g.closetag_shortcut = ">"
g.enable_react_fragment = 1
