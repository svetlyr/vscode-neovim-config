return {
  "rmagatti/auto-session",
  lazy = false,

  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { "~/", "/" },
    auto_restore_last_session = vim.uv.cwd() == vim.uv.os_homedir(),
  },
}
