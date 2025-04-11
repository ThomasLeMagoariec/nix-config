# ✨ My NixOS Configuration

This repo contains my fully modular NixOS + Home Manager setup, as well as tracked `.dotfiles`. Built around flakes and designed for maximum reusability across multiple machines.


## 📁 Folder Structure

| Path           | Purpose                                                             |
|----------------|---------------------------------------------------------------------|
| [`home-manager/`](./home-manager) | Home Manager modules and `.dotfiles`                     |
| [`hosts/`](./hosts)             | Per-host NixOS and Home Manager configuration            |
| [`modules/`](./modules)         | Custom reusable NixOS modules                           |
| [`shells/`](./shells)           | Shell-specific modules (e.g. zsh, fish)                  |
| [`scripts/`](./scripts)         | Utility scripts for rebuilds, garbage collection, etc.   |


## 🧠 Per-Host Variables

To keep things modular and DRY, each host defines the following in `_module.args`:

- `host`: hostname (`"thomas"`, `"paul"`, `"school"`, etc.)
- `de`: desktop environment/window manager (`"i3"`, `"hyprland"`)
- `sh`: shell (`"fish"`, `"zsh"`)

These variables are used throughout the system to conditionally load modules and configs.


## ⚙️ Flake-Based Setup

This config uses [Nix Flakes](https://nixos.wiki/wiki/Flakes) for reproducible system builds.|

### Core files:

- `flake.nix`: Declares inputs (nixpkgs, home-manager, etc.) and outputs
- `flake.lock`: Version-locked inputs for reproducibility


## 🚀 Usage

### 🖥️ NixOS (system-level)

To deploy a system config:

`cd scripts/`

```bash
./rebuild.sh <host>
```

## 💻 Modules Overview

Each NixOS module serves a specific purpose:

### apps
Useful GUIs like Obsidian (notes), file manager, and Bluetooth tools.

### dev
All development tools, including Neovim, git, and other CLI apps.

Shell-specific config lives in `dev/shells`

`dev/minimum.nix`: Minimal setup for quick spin-ups

### gaming

Gaming stack (steam, wine) possibly more in the future

### hyprland
Packages required for Hyprland. Config files live under `home-manager/dotfiles`

### random
Fun or unsorted packages — sandbox for experimentation

### system
System-level tweaks to reduce clutter in `configuration.nix`

## 🖥️ Host Details

|Host    |Purpose                           |
|--------|----------------------------------|
|`thomas`| Main laptop (Gaming + Dev)       |
|`paul`  | Minimal dev config for a friend  |
|`school`| Uses home-manager, no `sudo`     |
|`nixos` | Fallback for `thomas` (Unstable) |

## 🌟 Features

✅ Fully modular NixOS & Home Manager config

🧩 Role-based setup with host, de, and sh vars

🐚 Zsh & Fish support

🖥️ Hyprland & i3 WM setup

🎮 Optional gaming environment

🧼 Clean flake-based structure


