# Personal macOS Configuration Management System

This is a comprehensive chezmoi and Ansible-based dotfiles repository for automated macOS environment setup. The system provides intelligent machine type detection supporting three core profiles: **personal**, **development**, and **custom**, along with their combinations.

## Core Capabilities
- **Machine Profiling**: Interactive setup determines machine type from combinations of: personal, development, custom
- **Custom Configuration Support**: The 'custom' profile enables local/private configurations (e.g., .Brewfile.local) that aren't publicly available
- **Automated Setup**: One-command installation of complete macOS environments
- **Conditional Configuration**: Template-driven configs that adapt based on machine profile
- **System Configuration**: Ansible playbooks for macOS settings (Finder, Dock, Safari, etc.)
- **Development Environment**: Neovim (LazyVim), Zsh + Oh My Zsh, Starship prompt
- **Security Integration**: 1Password CLI with SSH agent configuration

## Key Technologies
- chezmoi (dotfiles management + templating)
- Ansible (macOS system configuration)
- Homebrew (conditional package management with local customization support)
- Zsh + Oh My Zsh (shell environment)
- Starship (shell prompt)
- Neovim/LazyVim (editor)
- 1Password CLI (credential management)

## Architecture
Template-driven system where `.tmpl` files provide dynamic configuration based on machine profile prompts. The 'custom' profile enables local configuration files (like .Brewfile.local) for private/proprietary customizations not suitable for public repositories. Supports combinations: personal, development, custom, personal+development, personal+custom, development+custom, personal+development+custom.
