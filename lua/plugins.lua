return {
  { "echasnovski/mini.surround", opts = {} },
  { "xiyaowong/fast-cursor-move.nvim", config = function() end },
  {
    "akinsho/horizon.nvim",
    version = "*",
    priority = 1000,
    init = function()
      vim.o.background = "dark"
      vim.cmd.colorscheme("horizon")
    end,
    opts = {
      plugins = {
        flash = true,
        cmp = not vim.g.vscode,
        gitsigns = not vim.g.vscode,
        neo_tree = not vim.g.vscode,
        whichkey = not vim.g.vscode,
        telescope = not vim.g.vscode,
        indent_blankline = not vim.g.vscode,
      },
    },
  },
  {
    "chrisgrieser/nvim-spider",
    keys = {
      { "w", function() require("spider").motion("w") end, mode = { "n", "o", "x" } },
      { "e", function() require("spider").motion("e") end, mode = { "n", "o", "x" } },
      { "b", function() require("spider").motion("b") end, mode = { "n", "o", "x" } },
    },
  },
}
