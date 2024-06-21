local opt=vim.opt

-- line numbers
opt.relativenumber=true
opt.number=true

-- tabs & indentation
opt.tabstop=2
opt.shiftwidth=2
opt.expandtab=true
opt.autoindent=true

-- line wrapping
opt.wrap=true
opt.linebreak=true

-- search settings
opt.ignorecase=true
opt.smartcase=true

-- cursorline
opt.cursorline=true

-- backspace
opt.backspace="indent,eol,start"

-- clipboard
opt.clipboard:append{"unnamedplus"}

-- turn off swapfile
opt.swapfile = false

--set leader
vim.g.mapleader = " "

-- reset terminal cursor to underscore when exiting nvim
vim.api.nvim_create_autocmd("ExitPre", {
	group = vim.api.nvim_create_augroup("Exit", { clear = true }),
	command = "set guicursor=n-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150",
	desc = "Set cursor back to beam when leaving Neovim."
}) 
