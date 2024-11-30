return {
  "akinsho/horizon.nvim",
  version = "*",
  priority = 1000,
  init = function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("horizon")
  end,
  opts = {
    plugins = {
      cmp = true,
      flash = true,
      gitsigns = true,
      neo_tree = true,
      whichkey = true,
      telescope = true,
      indent_blankline = true,
    },
  },
}
