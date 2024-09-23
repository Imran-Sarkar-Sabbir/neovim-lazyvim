-- bootstrap lazy.nvim, LazyVim and your plugins

-- Disable backup files in Neovim
vim.opt.backup = false -- Disable backup files
vim.opt.writebackup = false -- Disable backup before overwriting
vim.opt.swapfile = false -- Disable swap file

require("config.lazy")
