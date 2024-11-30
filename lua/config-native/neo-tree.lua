return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = false,
  version = "*",
  priority = 1000,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  cmd = "Neotree",
  keys = {
    { "<leader>e", ":Neotree toggle<CR>", desc = "NeoTree toggle", silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      },
      use_libuv_file_watcher = true,
      hijack_netrw_behavior = "open_default",
    },
    window = {
      width = 30,
      position = "right",

      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
      },
    },
  },
}
