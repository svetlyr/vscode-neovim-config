
# Neovim VSCode config

This is my personal [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim) centered setup.

## VSCode lazydev.nvim like functionality
You can achieve the same functionality provided by [lazydev.nvim](https://github.com/folke/lazydev.nvim) by installing [Lua LSP](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) for VSCode and adding your neovim plugins install directory to the workspace. (Varies by package manager)

  ```json
  "Lua.diagnostics.libraryFiles": "Enable",
  "Lua.workspace.library": [
    "$HOME/.local/share/nvim/lazy/"
  ],
  ```
