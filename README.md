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

### Installation Options

#### Option 1: Download as ZIP (Recommended for trying out)

1. **Backup existing configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Download the configuration**:
   - Click the green "Code" button on GitHub
   - Select "Download ZIP"
   - Extract the ZIP file to `~/.config/nvim`

3. **Start Neovim**:
   ```bash
   nvim
   ```

#### Option 2: Git Clone (For advanced users)

1. **Backup existing configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this configuration**:
   ```bash
   git clone https://github.com/airfelixx/icarus-nvimconfig.git ~/.config/nvim
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

### General Navigation
| Key | Mode | Action |
|-----|------|--------|
| `<Space>` | Normal | Leader key |
| `<C-h>` | Normal | Move to left window |
| `<C-j>` | Normal | Move to bottom window |
| `<C-k>` | Normal | Move to top window |
| `<C-l>` | Normal | Move to right window |
| `<C-Up>` | Normal | Resize window up |
| `<C-Down>` | Normal | Resize window down |
| `<C-Left>` | Normal | Resize window left |
| `<C-Right>` | Normal | Resize window right |

### File Operations
| Key | Mode | Action |
|-----|------|--------|
| `<leader>pv` | Normal | Open file explorer |

### Telescope (Fuzzy Finder)
| Key | Mode | Action |
|-----|------|--------|
| `<leader>pf` | Normal | Find files |
| `<C-p>` | Normal | Find files in git repository |
| `<leader>ps` | Normal | Live grep search |

### Harpoon (Quick File Navigation)
| Key | Mode | Action |
|-----|------|--------|
| `<leader>a` | Normal | Add file to harpoon |
| `<C-e>` | Normal | Toggle harpoon quick menu |
| `<C-h>` | Normal | Navigate to harpoon file 1 |
| `<C-t>` | Normal | Navigate to harpoon file 2 |
| `<C-n>` | Normal | Navigate to harpoon file 3 |
| `<C-s>` | Normal | Navigate to harpoon file 4 |

### LSP (Language Server Protocol)
| Key | Mode | Action |
|-----|------|--------|
| `gd` | Normal | Go to definition |
| `K` | Normal | Hover information |
| `<leader>vws` | Normal | Workspace symbol search |
| `<leader>vd` | Normal | Open diagnostics float |
| `[d` | Normal | Go to next diagnostic |
| `]d` | Normal | Go to previous diagnostic |
| `<leader>vca` | Normal | Code action |
| `<leader>vrr` | Normal | References |
| `<leader>vrn` | Normal | Rename symbol |
| `<C-h>` | Insert | Signature help |

### Undo Tree
| Key | Mode | Action |
|-----|------|--------|
| `<leader>u` | Normal | Toggle undo tree |

### Git Signs
| Key | Mode | Action |
|-----|------|--------|
| `<leader>gp` | Normal | Preview hunk |
| `<leader>gb` | Normal | Blame line |

### Terminal
| Key | Mode | Action |
|-----|------|--------|
| `<C-\>` | Normal/Insert/Terminal | Toggle terminal |

### Text Manipulation
| Key | Mode | Action |
|-----|------|--------|
| `J` | Visual | Move selected text down |
| `K` | Visual | Move selected text up |
| `J` | Normal | Join lines and keep cursor position |
| `<C-d>` | Normal | Half page down and center cursor |
| `<C-u>` | Normal | Half page up and center cursor |
| `n` | Normal | Next search result and center cursor |
| `N` | Normal | Previous search result and center cursor |

### Clipboard Operations
| Key | Mode | Action |
|-----|------|--------|
| `<leader>y` | Normal/Visual | Yank to system clipboard |
| `<leader>Y` | Normal | Yank line to system clipboard |
| `<leader>d` | Normal/Visual | Delete without affecting clipboard |

### Miscellaneous
| Key | Mode | Action |
|-----|------|--------|
| `Q` | Normal | Disabled (no-op) |
| `<C-f>` | Normal | Silent tmux sessionizer |
| `<leader>f` | Normal | Format buffer with LSP |
| `<C-k>` | Normal | Next item in quickfix list |
| `<C-j>` | Normal | Previous item in quickfix list |
| `<leader>k` | Normal | Next item in location list |
| `<leader>j` | Normal | Previous item in location list |
| `<leader>s` | Normal | Search and replace word under cursor |

> **Note**: `<leader>` is mapped to the spacebar. For complete and up-to-date key mappings, refer to [`lua/basicConfig/keymap.lua`](lua/basicConfig/keymap.lua).

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

---

*"The sky is not the limit when you're reaching for the stars."*
