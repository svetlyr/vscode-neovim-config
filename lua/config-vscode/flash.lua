return {
  "folke/flash.nvim",
  event = "VeryLazy",

  ---@type Flash.Config
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
