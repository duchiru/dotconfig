-- Line numbers: Show line numbers, highlight active line and relative numbers
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true

-- File explorer: disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Indentation
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Diagnostic
vim.diagnostic.enable(true)
vim.diagnostic.config({ virtual_text = true })

-- Swap files
vim.opt.swapfile = false
