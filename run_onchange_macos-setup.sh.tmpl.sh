#!/bin/bash

# Macos-setup hash: {{tar -cf - ".local/share/macos-setup" | sha1sum }}
echo "Updating MacOS Configurqation."
ansible-playbook $HOME/.local/share/macos-setup/main.yml --ask-become-pass
