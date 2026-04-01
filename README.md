# Neovim Configuration

A compact, batteries-included Neovim config built on LazyVim and lazy.nvim.

This repository contains a ready-to-use Neovim configuration (init.lua + lua/) that bootstraps lazy.nvim, loads LazyVim, and exposes a plugin folder for your customizations.

**Highlights**
- Uses `lazy.nvim` (auto-bootstrapped) and `LazyVim` as a base
- Example plugin specs in `lua/plugins/` (Flutter, UI tweaks, examples)
- LSP, Treesitter, Mason, and common editor conveniences pre-configured

**Quick Links**
- [init.lua](init.lua)
- [lua/config/lazy.lua](lua/config/lazy.lua)
- [lua/config/options.lua](lua/config/options.lua)
- [lua/config/keymaps.lua](lua/config/keymaps.lua)
- [lua/plugins/example.lua](lua/plugins/example.lua)
- [lua/plugins/flutter.lua](lua/plugins/flutter.lua)
- [lua/plugins/ui.lua](lua/plugins/ui.lua)
- [LICENSE](LICENSE)

---

## Prerequisites
- Neovim (recommended >= 0.8; 0.9+ gives the best experience)
- Git
- For language-specific tooling, install relevant language SDKs/CLIs (e.g., `flutter` for Dart/Flutter support)

On Windows you can install Neovim with `winget`, `scoop`, or `chocolatey`:

```powershell
# winget
winget install --id Neovim.Neovim -e --source winget

# or chocolatey
choco install neovim

# or scoop
scoop install neovim
```

On macOS:

```bash
# Homebrew
brew install neovim
```

On Linux (Debian/Ubuntu example):

```bash
# apt (may be older) or use the AppImage / distro packages
sudo apt install neovim
```

---

## Installation (use this config)

You can use this repository as your Neovim configuration. The standard locations are:
- Windows: `%LOCALAPPDATA%\nvim` (this workspace is already located there)
- macOS / Linux: `~/.config/nvim`

Clone (or copy) the repository into your Neovim config folder. Example (PowerShell):

```powershell
# Backup existing config if present
if (Test-Path $env:LOCALAPPDATA\nvim) { Rename-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.backup -Force }

# Clone this config into the Neovim config directory
git clone <repo-url> "$env:LOCALAPPDATA\nvim"
```

For macOS / Linux:

```bash
# Backup existing
mv ~/.config/nvim ~/.config/nvim.backup
# Clone
git clone <repo-url> ~/.config/nvim
```

If you're already in the config folder (this workspace), you can skip the clone step — the files are ready to use.

---

## First Run & Plugin Bootstrapping

This config auto-bootstraps `lazy.nvim` (see `lua/config/lazy.lua`). On first run `lazy.nvim` will be cloned and plugins will be installed automatically.

1. Open Neovim:

```bash
nvim
```

2. If plugins do not install automatically, open the lazy UI with `:Lazy` and then run `:Lazy sync`.

3. Verify LSP / tooling with `:Mason` (Mason UI) and `:checkhealth`.

Useful lazy.nvim commands:

- `:Lazy` — open lazy UI
- `:Lazy sync` — install/update plugins and their dependencies
- `:Lazy update` — update plugins
- `:Lazy clean` — remove unused plugins

---

## Customization

- Add or override plugin specs inside `lua/plugins/`. Any file in that folder is loaded by `lazy.nvim`.
- Core settings and behavior live in `lua/config/`:
  - [lua/config/options.lua](lua/config/options.lua) — global options
  - [lua/config/keymaps.lua](lua/config/keymaps.lua) — mappings
  - [lua/config/autocmds.lua](lua/config/autocmds.lua) — autocmds
  - [lua/config/lazy.lua](lua/config/lazy.lua) — lazy.nvim bootstrap + setup

Examples included:
- Flutter & Dart support: [lua/plugins/flutter.lua](lua/plugins/flutter.lua)
- UI toggles: [lua/plugins/ui.lua](lua/plugins/ui.lua)
- Example plugin specs: [lua/plugins/example.lua](lua/plugins/example.lua)

---

## Notes & Troubleshooting

- If `lazy.nvim` fails to clone, check your Git network access and run Neovim again.
- If an LSP or formatter is missing, open `:Mason` and install the desired tool, or add it to `ensure_installed` in the plugin specs.
- Use `:checkhealth` to surface common runtime issues.

---

## Common Commands

```text
# Open Neovim
nvim

# Open lazy UI
:Lazy

# Sync (install/update) plugins
:Lazy sync

# Update plugins
:Lazy update

# Mason UI for LSP/formatters
:Mason

# Neovim health check
:checkhealth
```

---

## Contributing

Feel free to open PRs or add plugin specs under `lua/plugins`. Keep changes small and focused.

---

## License

This repository includes a LICENSE file: [LICENSE](LICENSE)

---

If you'd like, I can also:
- add a short Getting Started video/gif suggestion
- add a minimal contributor guide

Happy hacking! 🚀# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
