-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Move cursor in insert mode with high priority
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true, desc = "Move cursor left in insert mode" })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, silent = true, desc = "Move cursor down in insert mode" })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, silent = true, desc = "Move cursor up in insert mode" })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true, desc = "Move cursor right in insert mode" })

vim.keymap.set({ "n", "v" }, "J", "8j", { noremap = true, desc = "Move cursor down 5 lines" })
vim.keymap.set({ "n", "v" }, "K", "8k", { noremap = true, desc = "Move cursor up 5 lines" })

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

-- Delete without yanking
vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete without yank" })
vim.keymap.set("n", "dd", '"_dd', { desc = "Delete line without yank" })
vim.keymap.set("n", "D", '"_D', { desc = "Delete to EOL without yank" })

-- Use 'x' as cut (normal delete/yank behavior)
vim.keymap.set({ "n", "v" }, "x", "d", { desc = "Cut" })
vim.keymap.set("n", "xx", "dd", { desc = "Cut line" })
vim.keymap.set("n", "X", "D", { desc = "Cut to EOL" })
