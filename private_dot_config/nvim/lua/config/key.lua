vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

function map(mode, key, command, opt)
	local option = { noremap = true }
	if opt then
		option = vim.tbl_extend('force', option, opt)
	end
	vim.keymap.set(mode, key, command, option)
end

-- NORMAL MODE
map('n', '<A-2>', ':NvimTreeToggle<CR>')

-- center search command
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- navigation between windows
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-h>', '<C-w>h')
map('n', '<C-l>', '<C-w>l')

-- format
map('n', '<LEADER>=', 'gg=G')

-- navigation between tabs
map('n', '<A-.>', ':bnext<CR>')
map('n', '<A-,>', ':bprevious<CR>')

-- INSERT MODE
-- return to the NORMAL MODE
map('i', '<C-i>', '<ESC>')

-- navigation in the INSERT MODE
map('i', '<C-j>', '<ESC>ja')
map('i', '<C-k>', '<ESC>ka')
map('i', '<C-h>', '<ESC>ha')
map('i', '<C-l>', '<ESC>la')

