local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true


-- Tabs and indentation
opt.shiftwidth = 2
opt.tabstop = 2
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true
opt.softtabstop = 2
-- control whether or not nvim should transforma tab character to spaces
opt.expandtab = true


-- Line wrapping
opt.breakindent = true
opt.linebreak = true
-- make the text of long lines always visible?
opt.wrap = false
-- make it so that long lines wrap smartly
opt.showbreak = string.rep(" ", 3)


-- Search and replace setttings
opt.ignorecase = true
opt.smartcase = true
-- Show substitute results in preview window
opt.inccommand = "split"


-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.cursorline = true
opt.title = true
-- the line background between two windows
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "None" })


-- Split windows
-- put new windows below current
opt.splitbelow = true 
-- put new windows right of current
opt.splitright = true 


-- Encodings
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"


-- Persistance undo
opt.undofile = true
-- Enable mouse
opt.mouse = "a"


-- Others
opt.scrolloff = 15
-- ref: https://www.reddit.com/r/vim/comments/jqogan/how_does_a_lower_updatetime_lead_to_better/
opt.updatetime = 100
-- always showing the signcolumn
opt.signcolumn = "yes" 