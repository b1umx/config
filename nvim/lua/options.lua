local opt = vim.opt

opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.synmaxcol = 240

opt.number = true
opt.foldenable = false
opt.foldmethod = 'indent'
-- opt.foldmethod = 'expr'
-- opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.splitright = true
opt.splitbelow = true
opt.equalalways = false
opt.ignorecase = true
opt.smartcase = true
opt.wrap = false
opt.termguicolors = true
opt.laststatus = 2
opt.completeopt = 'menu,menuone,noinsert,noselect'
opt.shortmess:append 'sI'

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.cino = 't0,N-s,g-1'

vim.g.mapleader = ','

