vim.cmd([[
set number
filetype plugin indent on
syntax on
]])
local o = vim.opt
o.autochdir = true
o.swapfile = false
o.undofile = true
o.hlsearch = false
o.mouse = "a"
o.clipboard = "unnamedplus"
