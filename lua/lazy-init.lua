require("lazy").setup({
  {
    import = "config-vscode",
    cond = function() return vim.g.vscode end,
  },
  {
    import = "config-native",
    cond = function() return not vim.g.vscode end,
  },
  { import = "plugins" },
}, {
  change_detection = {
    notify = false,
  },
  ui = {
    icons = (not vim.g.vscode and vim.g.have_nerd_font) and {} or {
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
