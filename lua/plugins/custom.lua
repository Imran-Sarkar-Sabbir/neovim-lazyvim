return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████
██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════
██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗ 
██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝ 
╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████
╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝

██╗███╗   ███╗██████╗  █████╗ ███╗   ██╗
██║████╗ ████║██╔══██╗██╔══██╗████╗  ██║
██║██╔████╔██║██████╔╝███████║██╔██╗ ██║
██║██║╚██╔╝██║██╔══██╗██╔══██║██║╚██╗██║
██║██║ ╚═╝ ██║██║  ██║██║  ██║██║ ╚████║
╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
]],
        },
      },
    },
  },
  "tpope/vim-surround",
  "mg979/vim-visual-multi",
  {
    "coder/claudecode.nvim",
    opts = {},
    keys = {
      { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      {
        "<leader>as",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree", "oil" },
      },
      -- Diff management
      { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
    },
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  -- color schemas
  { "EdenEast/nightfox.nvim", lazy = true },
  -- { "morhetz/gruvbox", lazy = true },
  { "ellisonleao/gruvbox.nvim" },
  { "projekt0n/github-nvim-theme", lazy = true },
  { "sainnhe/gruvbox-material", lazy = true },
  { "navarasu/onedark.nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "Mofiqul/dracula.nvim", lazy = true },
}
