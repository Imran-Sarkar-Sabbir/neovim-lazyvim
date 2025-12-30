-- Ensure prettier is installed via Mason
return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "prettier", -- For formatting JS/TS/JSON/Markdown
      "stylua", -- For Lua formatting
      "shellcheck", -- For shell script linting
      "shfmt", -- For shell script formatting
    },
  },
}
