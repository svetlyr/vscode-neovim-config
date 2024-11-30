require("lazy").setup({
  {
    import = "config-vscode",
    cond = function() return vim.g.vscode end,
  },
  {
    import = "config-native",
    cond = function() return not vim.g.vscode end,
  },

  -- TODO: refactor this into a plugins module
  -- TODO: add colorscheme.lua to shared config

  { "echasnovski/mini.surround", opts = {} },
  { "xiyaowong/fast-cursor-move.nvim", config = function() end },
  {
    "chrisgrieser/nvim-spider",
    keys = {
      { "w", function() require("spider").motion("w") end, mode = { "n", "o", "x" } },
      { "e", function() require("spider").motion("e") end, mode = { "n", "o", "x" } },
      { "b", function() require("spider").motion("b") end, mode = { "n", "o", "x" } },
    },
  },
  { -- TODO: duplicate flash for native and vscode config with separate keymaps
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      -- { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      -- { "<C-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  require("config-native.colorscheme"),
}, {
  change_detection = {
    notify = false,
  },
  ui = {
    icons = (not vim.g.vscode and vim.g.have_nerd_font) and {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})
