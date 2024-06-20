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
