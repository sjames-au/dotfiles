# Technology Stack

## Core Technologies

### Configuration Management
- **chezmoi** (v2.x): Primary dotfiles manager and templating engine
  - Handles file deployment, templating, and state management
  - Provides interactive prompts for machine profiling
  - Manages external repositories and dependencies
  - Uses Go template syntax for conditional configuration

### System Configuration
- **Ansible** (community.general collection): macOS system settings automation
  - Configures macOS preferences via `osx_defaults` module
  - Modular playbook structure for maintainability
  - Conditional execution based on sudo availability
  - Process restart automation for settings activation

### Package Management
- **Homebrew**: macOS package manager
  - Template-driven Brewfile for conditional package installation
  - Supports both formulae (CLI tools) and casks (GUI applications)
  - Automatic dependency resolution and installation
  - Hash-based change detection for updates

## Development Environment Stack

### Shell Environment
- **Zsh**: Default shell with extensive customization
- **Oh My Zsh**: Plugin framework and configuration management
  - Plugin ecosystem for enhanced functionality
  - Automatic updates via autoupdate plugin
  - Custom plugin integration via `.chezmoiexternal.toml`

### Shell Plugins (via Oh My Zsh)
- `git` - Git integration and aliases
- `fzf-tab` - Enhanced tab completion with fuzzy finding
- `autoupdate` - Automatic plugin updates
- `thefuck` - Command correction utility
- `zsh-autosuggestions` - Command history suggestions
- `chezmoi` - chezmoi integration and completions
- `zsh-fzf-history-search` - Fuzzy history search
- `zsh-syntax-highlighting` - Command syntax highlighting

### Terminal and Prompt
- **Kitty**: GPU-accelerated terminal emulator
- **Starship**: Cross-shell prompt with extensive customization
  - Language-specific indicators
  - Git status integration
  - Environment variable display
  - Custom symbol configuration

### Editor and Development Tools
- **Neovim**: Modern Vim-based text editor
- **LazyVim**: Neovim distribution with LSP support
  - Automatic plugin management
  - Language server protocol integration
  - Modern development features out of the box

### Development Utilities
- **fzf**: Fuzzy finder for command line
- **ripgrep**: Fast text search utility
- **lazygit**: Terminal UI for Git operations
- **mise**: Runtime version manager (successor to asdf)
- **thefuck**: Command correction utility
- **pipx**: Python application installer

## Security and Credential Management

### Authentication
- **1Password CLI**: Secure credential management
  - SSH agent integration
  - AWS CLI plugin integration
  - Secure secret storage and retrieval

### Git Configuration
- **SSH-based authentication**: Ed25519 key format
- **GPG signing**: SSH-based commit signing
- **Git LFS**: Large file storage support

## System Integration

### macOS System Configuration Areas
- **General UI/UX**: Window animations, scrollbars, resize behavior
- **Finder**: File browser preferences, view options, search behavior
- **Dock**: Auto-hide, sizing, hot corners configuration
- **Hardware**: Trackpad, keyboard, display settings
- **Screen**: Energy saver, screen saver configuration
- **Safari**: Browser preferences and security settings
- **Mail**: Email client configuration
- **TextEdit**: Default text editor settings

### External Dependencies
- **Oh My Zsh plugins**: Managed via Git repositories
- **LazyVim**: Cloned from official starter repository
- **Font**: Intone Mono Nerd Font for terminal icons

## Development Setup Requirements

### Prerequisites
- macOS (primary target platform)
- Terminal.app with Full Disk Access permissions
- Terminal.app with App Management permissions

### Installation Dependencies
- **Homebrew**: Installed via official installation script
- **chezmoi**: Installed via Homebrew
- **Git**: Required for repository cloning and management

### Runtime Dependencies
- **Ansible**: Installed conditionally based on `macosSetup` profile
- **Node.js**: Required for Neovim LSP functionality
- **Python**: Required for various development tools

## Configuration Patterns

### Template System
- **Go templates**: Used throughout for conditional configuration
- **Profile variables**: Boolean flags drive template logic
- **Hash-based triggers**: File changes trigger script execution
- **External file inclusion**: Templates can include other files

### File Organization
- `dot_*` prefix: Files deployed to home directory
- `private_*` prefix: Files with restricted permissions
- `run_*` prefix: Executable scripts
- `run_once_*`: Scripts that run only once
- `run_onchange_*`: Scripts that run when files change

### Security Considerations
- Private files (SSH config, Git config) use `private_` prefix
- 1Password integration for secure credential access
- SSH agent configuration for secure authentication
- GPG signing for Git commit verification

## Maintenance and Updates

### Automatic Updates
- Oh My Zsh plugins auto-update daily
- Homebrew packages updated via `brew bundle`
- System software updates configured for automatic installation

### Manual Maintenance
- Ansible playbooks require periodic review for macOS changes
- Package definitions need updates for new software versions
- Template logic may need adjustment for new profile combinations

## Technical Constraints

### Platform Limitations
- macOS-specific (uses `osx_defaults` and macOS-specific tools)
- Requires sudo access for some system configurations
- Some settings require process restarts to take effect

### Dependency Management
- External repositories managed via chezmoi
- Plugin versions not pinned (uses latest from Git)
- Homebrew formulae use latest stable versions

## Performance Considerations

### Optimization Strategies
- Hash-based change detection prevents unnecessary script execution
- Modular Ansible playbooks allow selective configuration
- External repositories cached locally by chezmoi
- Conditional package installation reduces bloat

### Resource Usage
- Minimal runtime overhead after initial setup
- Git repositories consume disk space for plugins
- Ansible execution requires temporary elevated privileges
