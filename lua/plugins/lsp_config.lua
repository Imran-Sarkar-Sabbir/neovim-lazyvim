require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
    "ts_ls",
    "intelephense",
  },
})

-- disabled inlayHint functionality
vim.lsp.handlers["textDocument/inlayHint"] = function() end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function()
        require("lazyvim.util").lsp.on_attach(function(_, buffer)
          vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
        end)
      end,
    },
    opts = {
      servers = {
        tsserver = {
          on_attach = function(client, bufnr)
            -- Disable tsserver formatting if you are using prettier
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
            vim.keymap.set("n", "<leader>xx", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
          end,
        },
      },
      setup = {
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true
        end,
      },
    },
  },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")

      opts.sources = {
        -- Eslint
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettier,
      }
    end,
  },
}
