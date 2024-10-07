-- Basic options.

-- Tree style for netrw
vim.g.netrw_liststyle = 3

local opt = vim.opt

-- Set line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line

-- Tabs & indentation.
opt.tabstop = 4 -- 4 spaces per tab.
opt.softtabstop = 4 -- 4 spaces per tab.
opt.shiftwidth = 4 -- 4 spaces for indent width.
opt.expandtab = true -- expand tabs to spaces
opt.smartindent = true -- try to indent smartly

-- Line wrapping
opt.wrap = false -- disable line wrapping

-- Search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case, search is case sensitive
opt.hlsearch = false -- disable highlight once you run search
opt.incsearch = true -- highlight while you are writing search pattern

-- Appearance options.
-- Turn on termguicolors for theme colorschemes to work
-- (Have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- Backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, eol or insert mode start position

-- Clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- Split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- Set spelling on
opt.spelllang = "en_us"
opt.spell = true

-- Scrolling
opt.scrolloff = 8 -- Always keep 8 lines above/below the cursor when scrolling.

-- Color column
opt.colorcolumn = "80" -- Have a column at 80 chars to avoid long lines.

-- Update time. Useful for plugins that look at changes in the buffer.
opt.updatetime = 100 -- Buffer gets updated 100ms after input ends.
