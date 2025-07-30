# Product Overview

## Purpose

This macOS configuration management system exists to eliminate the tedious, error-prone process of manually setting up new macOS machines. It transforms what used to be hours or days of manual configuration into a single command that delivers a fully configured, personalized macOS environment.

## Problems It Solves

### Manual Setup Pain Points
- **Time-consuming setup**: New machine setup traditionally takes hours of manual configuration
- **Inconsistent environments**: Different machines end up with slightly different configurations
- **Forgotten configurations**: Important settings and tools are often missed during manual setup
- **Security gaps**: Manual setup often skips security configurations like SSH keys and credential management
- **Profile conflicts**: Personal and work machines need different software but similar base configurations

### Configuration Management Challenges
- **Static dotfiles**: Traditional dotfiles don't adapt to different machine types or use cases
- **Package bloat**: Installing unnecessary software on machines that don't need it
- **System settings**: macOS system preferences are tedious to configure manually and hard to replicate
- **Credential management**: Secure handling of SSH keys, API tokens, and other credentials across machines

## How It Works

### Interactive Machine Profiling
The system starts by asking simple questions to understand the machine's intended use:
- Will this machine need personal apps?
- Will this machine be used for development?
- Should macOS be configured with custom settings?
- Is this a work machine?

Based on these answers, it creates a unique profile that drives all subsequent configuration decisions.

### Automated Configuration Deployment
1. **Package Installation**: Homebrew packages are conditionally installed based on machine profile
2. **Dotfiles Management**: Configuration files are templated and deployed with profile-specific customizations
3. **System Configuration**: Ansible playbooks configure macOS system settings (Finder, Dock, Safari, etc.)
4. **Development Environment**: Neovim, Zsh, and development tools are automatically configured
5. **Security Setup**: 1Password CLI integration and SSH agent configuration

## User Experience Goals

### Primary Experience: "One Command Setup"
```bash
chezmoi init --apply sjames-au/dotfiles
```
This single command should result in a fully configured macOS environment tailored to the user's needs.

### Key User Journeys

#### New Personal Machine Setup
1. User runs the initialization command
2. System prompts for machine type (personal = true, developer = false)
3. Personal apps (1Password, ChatGPT) are installed
4. Basic shell and system configurations are applied
5. User has a ready-to-use personal machine

#### New Development Machine Setup
1. User runs the initialization command
2. System prompts for machine type (personal = false, developer = true)
3. Development tools (Neovim, Docker, VS Code, terminal tools) are installed
4. Development-focused system configurations are applied
5. LazyVim is automatically cloned and configured
6. User has a complete development environment

#### Combined Personal + Development Machine
1. User runs the initialization command
2. System prompts for machine type (personal = true, developer = true)
3. Both personal and development packages are installed
4. 1Password CLI is configured for secure credential management
5. User has a machine suitable for both personal use and development work

### Success Metrics
- **Setup Time**: Reduce new machine setup from hours to minutes
- **Consistency**: Identical configurations across multiple machines of the same profile
- **Completeness**: No manual configuration steps required after initial setup
- **Flexibility**: Same repository serves multiple machine types without conflicts
- **Security**: Proper credential management and SSH configuration out of the box

## Target Users

### Primary: Individual Developer/Power User
- Maintains multiple macOS machines (personal laptop, work laptop, desktop)
- Values consistent development environments
- Needs different software profiles for different machines
- Wants automated, repeatable setup processes

### Secondary: Team Lead/DevOps
- Sets up machines for team members
- Needs standardized development environments
- Requires security-compliant configurations
- Values documentation and maintainability

## Value Proposition

**"Transform your macOS setup from a day-long manual process into a single command that delivers a perfectly configured machine tailored to your specific needs."**

The system eliminates setup friction while maintaining the flexibility to serve different use cases through intelligent profiling and conditional configuration.
