-- Disable default LSP keymaps that conflict with custom keymaps
return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- Disable K (hover) to allow custom k mapping
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "k", false }

      -- Rebind hover to H
      keys[#keys + 1] = { "T", vim.lsp.buf.hover, desc = "Hover" }
    end,
  },
}
