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
   cd ~
   sh -c "$(curl -fsLS get.chezmoi.io)"
   ~/bin/chezmoi init --apply https://github.com/your_username/dotfiles.git
   ```

### Configuration Details

- **Zsh Configuration:**

  - Located in `dot_zshrc`
  - Includes settings for Oh My Zsh, plugins, and aliases

- **Neovim Configuration:**

  - Located in `init.lua`
  - Uses `lazy.nvim` for plugin management
  - Includes various plugins for enhanced functionality

- **macOS Setup:**
  - Managed using Ansible playbooks in `macos-setup`
  - Configures general macOS settings, hardware, screen, finder, dock, and more

### Additional Information

- **Neovim Plugins:**

  - Includes plugins like `tpope/vim-fugitive`, `github/copilot.vim`, `nvim-telescope/telescope.nvim`, and more
  - Detailed configurations in `init.lua`

- **Homebrew Packages:**
  - Listed in `dot_Brewfile.tmpl`
  - Includes tools like `chezmoi`, `kitty`, `1password`, `starship`, `fzf`, `neovim`, and more

### Post Installation

Start Neovim with:

```sh
nvim
```

Use `:Lazy` within Neovim to view the current plugin status.

### Recommended Steps

It is recommended to fork this repository to your own GitHub account so that you can customize it further as per your needs.

For more information on extending and exploring Neovim, refer to the [Effective Neovim: Instant IDE](https://youtu.be/stqUbv-5u2s) video.

## License

This repository is licensed under the MIT License. See the `LICENSE` file for more details.
