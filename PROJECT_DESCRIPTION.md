# Personal macOS Configuration Management System

## Overview

This repository contains a comprehensive macOS dotfiles and system configuration management solution built on chezmoi and Ansible. It provides automated environment setup with intelligent machine type detection, supporting multiple configuration profiles for different use cases.

## Main Objectives

- **Automated Environment Setup**: One-command installation and configuration of complete macOS development and personal environments
- **Flexible Machine Profiling**: Support for various machine types (personal, development, local) and their combinations
- **Consistent Configuration**: Maintain identical configurations across multiple machines while allowing profile-specific customizations

## Key Features

### Intelligent Configuration Profiles
- Interactive setup prompts determine machine type and requirements
- Supports combinations: personal, development, custom, and mixed profiles
- Conditional package installation and configuration based on selected profiles

### Automated System Configuration
- Comprehensive Ansible playbooks for macOS system settings
- Configures Finder, Dock, Safari, Mail, hardware settings, and UI preferences
- Based on proven dotfiles from mathiasbynens and paulirish

### Development Environment
- **Neovim**: LazyVim starter configuration with automatic setup
- **Shell**: Zsh with Oh My Zsh, extensive plugin ecosystem
- **Prompt**: Starship cross-shell prompt with custom configuration
- **Tools**: fzf, ripgrep, lazygit, mise, thefuck, and development utilities

### Package Management
- Template-driven Brewfile with conditional package installation
- Separate package sets for personal, development, and local environments
- Automatic dependency resolution and installation

### Security Integration
- 1Password CLI integration with SSH agent configuration
- Secure credential management for AWS and other services
- GPG signing configuration for Git commits

## Technologies Used

- **chezmoi**: Dotfiles management, templating, and deployment
- **Ansible**: System configuration automation and macOS settings management
- **Homebrew**: Package management and software installation
- **Zsh + Oh My Zsh**: Shell environment with plugin ecosystem
- **Starship**: Modern, fast, and customizable shell prompt
- **Neovim (LazyVim)**: Modern Vim-based text editor with LSP support
- **1Password CLI**: Secure credential and secret management
- **Git**: Version control with GPG signing and SSH key management

## Architecture

The system uses a layered approach:
1. **chezmoi** manages dotfiles and provides templating capabilities
2. **Ansible playbooks** handle macOS system configuration
3. **Homebrew** manages package installation with profile-based conditions
4. **Template files** (.tmpl) provide dynamic configuration based on machine profile

## Significance

This configuration system eliminates the manual setup time for new macOS machines, ensuring consistent development environments across personal and work contexts. The intelligent profiling system allows the same repository to serve multiple machine types while maintaining security and customization requirements.

The modular design and extensive automation make it suitable for developers who frequently set up new machines or need to maintain consistent environments across multiple devices.
