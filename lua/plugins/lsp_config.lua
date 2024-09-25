-- disabled inlayHint functionality
-- vim.lsp.handlers["textDocument/inlayHint"] = function() end

return {
  {
    "mason-lspconfig",
    ensure_installed = {
      "lua_ls",
    },
  },
}
