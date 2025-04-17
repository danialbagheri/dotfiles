-- general nvim (vim) settings

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

-- below will connect yank to clipboard
--vim.opt.clipboard = "unnamedplus"
-- we use the keymapping vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
