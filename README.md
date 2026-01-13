# Aurorix-Saigon

A template, building custom bootc operating system images based on the lessons from [Universal Blue](https://universal-blue.org/) and [Bluefin](https://projectbluefin.io). 

I called it Aurorix-Saigon, bcs the hard work has been done with Aurora already and all my spins have Asterix & Obelix inspired names.

**Unlike previous templates, you are not modifying Bluefin and making changes.** I assembled my own Aurora in the same exact way that Bluefin, Aurora, and Bluefin LTS are built. 

This is way more flexible and better for everyone since the image-agnostic and desktop things from Bluefin live in @projectbluefin/common. 

Instead, I created my own OS repository based on this template and the latest version of Aurora, allowing full customization while leveraging Bluefin's robust build system and shared components.

> ### Be the one who moves, not the one who is moved

So, check out the following files to see what has changed, removed and added:

    /build/10-build.sh:                    edited base applications of Aurora
    
    /custom/brew/default.Brewfile:         adjusted the default applications

    /custom/brew/fonts.Brewfile            enabling nerdfonts
    
    /custom/flatpaks/default.preinstall    flatpaks to be installed at first login

## How to Get There

### First install

    - Install Aurora by using the available iso at https://getaurora.dev/en

### Rebase to Aurorix

    - sudo bootc switch ghcr.io/thesaigoneer/aurorix-saigon:stable
    
### Enter Aurorix

    - flatpaks will be installed in the background
    - in the cli run 'ujust install-default-apps'
    - in the cli run 'ujust install-fonts'

The last two commands will brew your cli apps and nerd fonts so they are ready to use.

    # Modern cli apps that will be installed:                     # Fonts that will be added:
    "bat"        # cat with syntax highlighting                   "font-fira-code-nerd-font" 
    "eza"        # Modern replacement for ls                      "font-jetbrains-mono-nerd-font"
    "fd"         # Simple, fast alternative to find               "font-meslo-lg-nerd-font"
    "fzf"        # fuzzy finder                                   "font-ubuntu-nerd-font"
    "rg"         # ripgrep - faster grep                          "font-source-code-pro"
    "yazi"       # filemanager  

    # Development tools
    "git"        # Git version control
    "micro"      # editor
    "vim"        # need I say more

    # Shell enhancements  
    "starship"   # Cross-shell prompt
    "zoxide"     # Smarter cd command

    # Utilities
    "btop"       # Interactive process viewer
    "mc"         # Midnight Commander
    "tmux"       # Terminal multiplexer

## Detailed Guides
- [Homebrew/Brewfiles](custom/brew/README.md) - Runtime package management
- [Flatpak Preinstall](custom/flatpaks/README.md) - GUI application setup
- [ujust Commands](custom/ujust/README.md) - User convenience commands
- [Build Scripts](build/README.md) - Build-time customization

## Community

- [Universal Blue Discord](https://discord.gg/WEu6BdFEtp)
- [bootc Discussion](https://github.com/bootc-dev/bootc/discussions)

## Learn More

- [Universal Blue Documentation](https://universal-blue.org/)
- [bootc Documentation](https://containers.github.io/bootc/)

