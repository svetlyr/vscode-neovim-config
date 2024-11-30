return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,

  --- @type snacks.Config
  opts = {
    -- bigfile = { enabled = true },
    buf_delete = { enabled = true },
  },
  keys = {
    { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
  },
}
