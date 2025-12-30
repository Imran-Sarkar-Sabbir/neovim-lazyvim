-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Move cursor in insert mode with high priority
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true, desc = "Move cursor left in insert mode" })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, silent = true, desc = "Move cursor down in insert mode" })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, silent = true, desc = "Move cursor up in insert mode" })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true, desc = "Move cursor right in insert mode" })

-- Override LSP signature help keybinding
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.keymap.set(
      "i",
      "<C-k>",
      "<Up>",
      { buffer = args.buf, noremap = true, silent = true, desc = "Move cursor up in insert mode" }
    )
  end,
})
