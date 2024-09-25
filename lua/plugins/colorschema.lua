return {
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
  { "navarasu/onedark.nvim", priority = 1000 },
  { "Mofiqul/vscode.nvim", priority = 1000 },
  { "rebelot/kanagawa.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "EdenEast/nightfox.nvim" },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  { "rmehri01/onenord.nvim" },
  { "oxfist/night-owl.nvim" },
  {
    "tiagovla/tokyodark.nvim",
    opts = {
      -- custom options here
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional

      -- set the default colorscheme
      vim.cmd([[colorscheme duskfox]])
    end,
  },
}
