# icarus-nvimconfig
<br> <br>

# Icarus Neovim Configuration

> "To Icarus there was no such thing as 'Too Close to the Sun'."

A modern, feature-rich Neovim configuration built with Lua, focusing on developer productivity and an aesthetic experience.

## 🚀 Features

- **Plugin Management**: [Lazy.nvim](https://github.com/folke/lazy.nvim) for fast and efficient plugin loading
- **LSP Integration**: Full Language Server Protocol support with auto-completion
- **Syntax Highlighting**: Enhanced syntax highlighting with Tree-sitter
- **File Navigation**: Telescope for fuzzy finding and Harpoon for quick file switching
- **Git Integration**: GitSigns for git status in the gutter
- **Terminal Integration**: Built-in terminal toggle functionality
- **Auto-completion**: Intelligent code completion
- **Undo History**: Persistent undo with visual undo tree
- **Auto-pairs**: Automatic bracket and quote pairing
- **Code Commenting**: Smart code commenting support

## 📁 Project Structure

```
~/.config/nvim/
├── init.lua                    # Main configuration entry point
├── lazy-lock.json             # Plugin version lock file
└── lua/
    ├── basicConfig/           # Core Neovim settings
    │   ├── init.lua          # Basic configuration loader
    │   ├── keymap.lua        # Custom key mappings
    │   ├── options.lua       # Neovim options and settings
    │   └── paint.lua         # UI and color scheme settings
    ├── core/
    │   └── init.lua          # Core module loader
    └── plug/                 # Plugin configurations
        ├── init.lua          # Plugin loader
        ├── lazy.lua          # Lazy.nvim setup
        ├── lsp/              # Language Server Protocol
        │   ├── completion.lua    # Auto-completion setup
        │   ├── handlers.lua      # LSP event handlers
        │   ├── init.lua         # LSP configuration loader
        │   ├── lspconfiguration.lua # LSP server configurations
        │   └── mason.lua        # Mason LSP installer setup
        └── plugConfigs/      # Individual plugin configurations
            ├── autopairs.lua     # Auto-pairs configuration
            ├── comment.lua       # Comment plugin setup
            ├── gitsigns.lua      # Git integration
            ├── harpoon.lua       # Quick file navigation
            ├── telescope.lua     # Fuzzy finder configuration
            ├── toggleterm.lua    # Terminal integration
            ├── treesitter.lua    # Syntax highlighting
            └── undotree.lua      # Undo history visualization
```

## 🔧 Installation

### Prerequisites

- Neovim >= 0.8.0
- Git
- A [Nerd Font](https://www.nerdfonts.com/) for proper icon display
- ripgrep (for Telescope live grep)
- Node.js (for LSP servers)

### Quick Install

1. **Backup existing configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this configuration**:
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```

4. **Wait for plugins to install**: Lazy.nvim will automatically install all plugins on first launch.

## 📦 Included Plugins

### Core Functionality
- **[lazy.nvim](https://github.com/folke/lazy.nvim)**: Plugin manager
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: LSP configuration
- **[mason.nvim](https://github.com/williamboman/mason.nvim)**: LSP server installer
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: Auto-completion engine

### Navigation & Search
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: Fuzzy finder
- **[harpoon](https://github.com/ThePrimeagen/harpoon)**: Quick file navigation

### Editor Enhancement
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Advanced syntax highlighting
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)**: Automatic bracket pairing
- **[comment.nvim](https://github.com/numToStr/Comment.nvim)**: Smart commenting
- **[undotree](https://github.com/mbbill/undotree)**: Undo history visualization

### Git Integration
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Git status in gutter

### Terminal
- **[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)**: Terminal integration

## ⌨️ Key Mappings

Key mappings are configured in [`lua/basicConfig/keymap.lua`](lua/basicConfig/keymap.lua). Some common mappings include:

> **Note**: Refer to the keymap.lua file for complete key binding configurations.

## 🎨 Customization

### Basic Settings
Core Neovim options are configured in [`lua/basicConfig/options.lua`](lua/basicConfig/options.lua).

### Color Scheme
UI and color scheme settings are in [`lua/basicConfig/paint.lua`](lua/basicConfig/paint.lua).

### Plugin Configuration
Individual plugin configurations are modular and located in [`lua/plug/plugConfigs/`](lua/plug/plugConfigs/).

### LSP Configuration
Language server settings are in [`lua/plug/lsp/`](lua/plug/lsp/):
- **Server setup**: [`lspconfiguration.lua`](lua/plug/lsp/lspconfiguration.lua)
- **Completion**: [`completion.lua`](lua/plug/lsp/completion.lua)
- **Handlers**: [`handlers.lua`](lua/plug/lsp/handlers.lua)
- **Mason setup**: [`mason.lua`](lua/plug/lsp/mason.lua)

## 🔧 Adding New Plugins

1. Add plugin specification to the appropriate configuration file in [`lua/plug/plugConfigs/`](lua/plug/plugConfigs/)
2. Create a new configuration file if needed
3. Require the new configuration in [`lua/plug/init.lua`](lua/plug/init.lua)
4. Restart Neovim - Lazy.nvim will automatically install new plugins

## 🐛 Troubleshooting

### Plugin Issues
- Run `:Lazy` to open the plugin manager interface
- Run `:Lazy sync` to update plugins
- Run `:Lazy clean` to remove unused plugins

### LSP Issues
- Run `:LspInfo` to check LSP server status
- Run `:Mason` to manage LSP servers
- Check `:checkhealth` for configuration issues

### General Issues
- Run `:checkhealth` for a comprehensive health check
- Check the Neovim log: `~/.local/share/nvim/log/`

## 📝 License

This configuration is open source and available under the MIT License.

## 🤝 Contributing

Feel free to fork this configuration and make it your own! If you have improvements or fixes, pull requests are welcome.

---

*"The sky is not the limit when you're reaching for the stars."*
