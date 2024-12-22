
# Neovim VSCode config

This is my personal [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim) centered setup.

## File structure
```
├── lua
│   ├── config-native           --- native neovim plugins
│   ├── config-vscode           --- vscode plugins and whichkey config
│   │   ├── keybindings.json
│   │   └── settings.json
│   ├── keymaps.lua
│   ├── lazy-bootstrap.lua
│   ├── lazy-init.lua
│   ├── options.lua
│   ├── plugins.lua             --- shared plugins
│   └── utils.lua
└── README.md
```

## VSCode lazydev.nvim like functionality
You can achieve the same functionality provided by [lazydev.nvim](https://github.com/folke/lazydev.nvim) by installing [Lua LSP](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) for VSCode and adding your neovim plugins install directory to the workspace. (varies by package manager)

  ```json
  "Lua.diagnostics.libraryFiles": "Enable",
  "Lua.workspace.library": [
    "$HOME/.local/share/nvim/lazy/"
  ],
  ```
