# My Dotfiles

This repository contains my personal configuration files for macOS, including settings for Neovim, Zsh, and more.

## Getting Started

Follow these steps to set up your macOS environment using these dotfiles.

### Prerequisites

None: all required tools are installed as part of the setup process.

### Manual Terminal Configuration

- Add Terminal.app to Full Disk Access in Settings > Privacy & Security > Full Disk Access
- Add Terminal.app to App Management in Settings > Privacy & Security > App Management

Once Kitty is installed, you will also need to add the above permissions for Kitty.

### Installation

1. **Install chezmoi and initialize with this repository:**

   ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    brew install chezmoi
    chezmoi init --apply sjames-au/dotfiles
    git remote set-url origin git@github.com:sjames-au/dotfiles.git # If you want to manage dotfiles
   ```

### Post Installation
- Open 1Password and login
- Start Neovim and use `:Lazy` within Neovim to view the current plugin status.
- Start Alt-Tab and configure permissions, it will prompt for the correct ones.
- Enable icloud Desktop/Document synchronisation Settings->Apple Account->iCloud->Drive->Desktop and Document Folder
## License

This repository is licensed under the MIT License. See the `LICENSE` file for more details.
