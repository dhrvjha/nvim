vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-up>", ":resize -2<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-down>", "<:resize +2<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-left>", ":vertical resize -2<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-right>", ":vertical resize +2<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<C-c>', '<Esc>:w<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-c>', ':w<CR>', {noremap=true, silent=true})
-- DEFAULTS
-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- save Undo file
vim.o.undofile = true

-- Case insensitive search unless /C or captial in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- ignore these files
vim.opt.wildignore = {'*.o', '*.a', '__pycache__'}
vim.o.wildignore = '*.o,*.a,__pycache__'

vim.opt.listchars = { space = '_', tab = '>~' }
vim.o.listchars = 'space:_,tab:>~'

vim.opt.formatoptions = { n = true, j = true, t = true }

