vim.opt.colorcolumn = "80"
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.spell = false
vim.opt.signcolumn = "auto"
vim.opt.wrap = false
-- vim.opt.expandtab = true
-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 4
vim.opt.iskeyword = vim.opt.iskeyword + { "-" }

vim.g.autoformat_enabled = true
vim.g.terraform_fmt_on_save = 1
