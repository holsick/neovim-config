local opt = vim.opt
local cache_dir = require('core.helper').get_cache_path()

-- Main Color Scheme
require('zephyr')

opt.termguicolors = true
opt.syntax = 'on'
opt.hidden = true
opt.magic = true
opt.virtualedit = 'block'
opt.clipboard = 'unnamedplus'
opt.wildignorecase = true
opt.swapfile = false
opt.directory = cache_dir .. 'swap/'
opt.undodir = cache_dir .. 'undo/'
opt.backupdir = cache_dir .. 'backup/'
opt.viewdir = cache_dir .. 'view/'

-- Some new options being tried out (change if these get annoying)
opt.history = 2000
opt.timeout = true
opt.ttimeout = true
opt.timeoutlen = 500
opt.ttimeoutlen = 10
opt.updatetime = 100
opt.redrawtime = 1500
opt.ignorecase = true
opt.smartcase = true
opt.infercase = true

-- Use rg in vim grep
if vim.fn.executable('rg') == 1 then
	opt.grepformat = '%f:%l:%c:%m,%f:%l:%m'
	opt.grepprg = 'rg --vimgrep --no-heading --smart-case'
end

opt.completeopt = 'menu,menuone,noselect'
opt.showmode = false
opt.scrolloff = 2
opt.sidescrolloff = 5
opt.ruler = false
opt.showtabline = 0
opt.winwidth = 30
opt.pumheight = 15
opt.showcmd = false
opt.cmdheight = 0
opt.laststatus = 3
-- opt.list = true -- shows indents within the file it seams
opt.pumblend = 10
opt.winblend = 10
opt.undofile = true

opt.smarttab = true
opt.expandtab = true
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2

-- wrapping
opt.linebreak = true
opt.whichwrap = 'h,l,<,>,[,],~'
opt.breakindentopt = 'shift:2,min:20'
opt.showbreak = '↳  '
opt.foldlevelstart = 99
opt.foldmethod = 'marker'

opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.incsearch = true

opt.textwidth = 100
-- opt.colorcolumn = '100'
