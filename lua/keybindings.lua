
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

map('n', '<leader>nt', ':NvimTreeToggle<CR>', opt)
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

map('n', '<leader>ms', ':MarkdownPreview<CR>', opt)
map('n', '<leader>mp', ':MarkdownPreviewStop<CR>', opt)
map('v', '<leader>sy', '"+y', opt)
map('v', '<leader>sp', '"+p', opt)
map('n', '<leader>tt', ':ToggleTerm<CR>', opt)



