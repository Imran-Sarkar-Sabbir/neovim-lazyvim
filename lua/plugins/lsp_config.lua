require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
  },
})

-- disabled inlayHint functionality
-- vim.lsp.handlers["textDocument/inlayHint"] = function() end

return {}
