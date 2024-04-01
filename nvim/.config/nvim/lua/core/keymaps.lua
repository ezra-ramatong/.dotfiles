local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Set space as leader key

map("", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

-- --------------------------------------------------------------------------------------------------------------------

-- Standard operations
map("i", "jk", "<ESC>", { silent = true, desc = "Exit insert mode" })
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
map("n", "<leader>q", "<cmd>confirm q<cr>", { silent = true, desc = "Quit" })
--map("n", "<leader>c", "<cmd>close<cr>", { silent = true, desc = "Close window" })
-- --------------------------------------------------------------------------------------------------------------------

-- Move lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move line dbdown (normal)" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move line up (normal)" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move line down (insert)" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move line up (insert)" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move line down (visual)" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move line up (visual)" })

-- --------------------------------------------------------------------------------------------------------------------

-- Nvim Tree

map("n", "<leader>fe", "<cmd>NvimTreeToggle<cr>", { desc = " Toggle File Explorer" })
map("n", "<leader>fo", "<cmd>NvimTreeFocus<cr>", { desc = " Focus File Explorer" })

-- --------------------------------------------------------------------------------------------------------------------

-- Window navigation

map("n", "<C-h>", "<C-w>h", { silent = true, desc = "Left window navigation" })
map("n", "<C-j>", "<C-w>j", { silent = true, desc = "Down window navigation" })
map("n", "<C-k>", "<C-w>k", { silent = true, desc = "Up window navigation" })
map("n", "<c-l>", "<c-w>l", { silent = true, desc = "Right window navigation" })

-- Make Window Bigger
map("n", "<leader>wb", "<C-w>o", { silent = true, desc = "Make Window Bigger" })

-- Move windows

--map("n", "<C-H>", "<C-w>H", { silent = true, desc = "Move window left" })
--map("n", "<C-J>", "<C-w>J", { silent = true, desc = "Move window down" })
--map("n", "<C-K>", "<C-w>K", { silent = true, desc = "Move window up" })
--map("n", "<c-L>", "<c-w>L", { silent = true, desc = "Move window right" })

-- --------------------------------------------------------------------------------------------------------------------

-- Bufferline

-- Navigate buffers
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bs", "<cmd>BufferLinePick<cr>", { desc = "Pick buffer" })

-- Close buffer
map("n", "<leader>bc", "<cmd>bdelete!<cr>", { desc = "Buffer Close" })

-- --------------------------------------------------------------------------------------------------------------------

-- Barbar

--[[ -- Move to previous/next
map("n", "<S-h>", "<Cmd>BufferPrevious<CR>", { silent = true, desc = "Previous buffer" })
map("n", "<S-l>", "<Cmd>BufferNext<CR>", { silent = true, desc = "Next buffer" })

-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", { silent = true, desc = "Move buffer to the left" })
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", { silent = true, desc = "Move buffer to the right" })

-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", { silent = true, desc = "Toggle pin/unpin buffer" })

-- Close buffer
map("n", "<leader>bc", "<Cmd>BufferClose<CR>", { silent = true, desc = "Close buffer" })

map("n", "<C-p>", "<Cmd>BufferPick<CR>", { silent = true, desc = "Magic buffer selection mode" })

-- Sort automatically by...
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", { silent = true, desc = "Sort buffers by buffer number" })
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", { silent = true, desc = "Sort buffers by directory" })
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", { silent = true, desc = "Sort buffers by language" })
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", { silent = true, desc = "Sort buffers by window number" }) ]]

-- --------------------------------------------------------------------------------------------------------------------
-- CMake
map("", "<leader>cmg", ":CMakeGenerate<cr> <cr>", {})
map("", "<leader>cmb", ":CMakeBuild<cr>", {})
--map("", "<leader>cmc", ":CMakeClose<cr>", {})
--map("", "<leader>cc", ":CMakeClean<cr>", {})
-- --------------------------------------------------------------------------------------------------------------------
-- Cpp
map("", "<leader>cc", ":w<cr>:!clang++ % -o %<.out <cr><cr>", { silent = true, noremap = true })
map("", "<leader>cr", '<cmd>TermExec cmd="./%:r.out" go_back=0<cr>', { silent = true, noremap = true })

-- --------------------------------------------------------------------------------------------------------------------
-- Telescope

--map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find for word under cursor" })
map("n", "<leader>fC", "<cmd>Telescope commands<cr>", { desc = "Commands" })
map("n", "<leader>fd", "<cmd>Telescope diagnostics severity_bound=ERROR<cr>", { desc = "Find diagnostics" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fF", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Find all files" })
map("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Find git files" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help" })
map("n", "<leader>fH", "<cmd>Telescope highlights<cr>", { desc = "Highlight groups" })
map("n", "<leader>fi", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find in buffer" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })
map("n", "<leader>fM", "<cmd>Telescope man_pages<cr>", { desc = "Man Pages" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find word in workspace" })

-- --------------------------------------------------------------------------------------------------------------------

-- Git

map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Git commits" })
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Git status" })
map("n", "<leader>gf", "<cmd>G<cr>", { desc = "Git fugitive" })

-- --------------------------------------------------------------------------------------------------------------------

-- ToggleTerm

map("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle Terminal" })

-- --------------------------------------------------------------------------------------------------------------------

-- DAP

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd>DapContinue<cr>", { desc = "Start or continue the debugger" })

-- --------------------------------------------------------------------------------------------------------------------

-- Diagnositcs

map("n", "<leader>[[", "<cmd>lua vim.diagnostic.goto_prev()<cr>", { desc = "Go to previous error" })
map("n", "<leader>]]", "<cmd>lua vim.diagnostic.goto_next()<cr>", { desc = "Go to next error" })

-- --------------------------------------------------------------------------------------------------------------------

-- Custom Maps
map("n", "<leader>ncl", "<cmd>set formatoptions=tco<cr>", { desc = "Disable Comment Leader Insertion" })
