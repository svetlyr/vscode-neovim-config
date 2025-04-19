return {
  "folke/flash.nvim",
  event = "VeryLazy",

  ---@type Flash.Config
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    modes = {
      search = {
        enabled = true,
      },
    },
  },
  keys = {
    { "s", mode = { "n", "o" }, function() require("flash").jump() end, desc = "Flash" },
  },
}
