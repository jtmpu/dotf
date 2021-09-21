-- Remove left move from space
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })

local api = vim.api
-- Leader key = space
vim.g.mapleader = " "

-- Remove highlights in searches
vim.api.nvim_set_keymap("n", "<Leader>h", ":set hlsearch!<CR>", { noremap = true, silent = true })

-- Easier window movements
api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })

-- Tab switch buffer (to be changed, using TAB and S-TAB for autocomplete atm)
-- vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", { noremap = true, silent = true })

-- Bind telescope functions
api.nvim_set_keymap("n", "<Leader>p", [[<Cmd>lua require("telescope.builtin").buffers()<CR>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>o", [[<Cmd>lua require("telescope.builtin").find_files()<CR>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>f", [[<Cmd>lua require("telescope.builtin").live_grep()<CR>]], { noremap = true, silent = false })
api.nvim_set_keymap("n", "<Leader>tp", [[<Cmd>lua require("telescope.builtin").registers()<CR>]], { noremap = true, silent = false })
api.nvim_set_keymap("n", "<Leader>tt", [[<Cmd>lua require("telescope.builtin").builtin()<CR>]], { noremap = true, silent = false })
api.nvim_set_keymap("n", "<Leader>j", [[<Cmd>lua require("telescope.builtin").jumplist()<CR>]], { noremap = true, silent = false })
api.nvim_set_keymap("n", "<Leader>d", [[<Cmd>lua require("telescope.builtin").lsp_document_diagnostics()<CR>]], { noremap = true, silent = false })
