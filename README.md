# Aurorix-Saigon

A template, building custom bootc operating system images based on the lessons from [Universal Blue](https://universal-blue.org/) and [Bluefin](https://projectbluefin.io). 

I called it Aurorix-Saigon, bcs the hard work has been done with Aurora already and all my spins have Asterix & Obelix inspired names..

**Unlike previous templates, you are not modifying Bluefin and making changes.**: I assembled my own Aurora in the same exact way that Bluefin, Aurora, and Bluefin LTS are built. 

This is way more flexible and better for everyone since the image-agnostic and desktop things we love about Bluefin lives in @projectbluefin/common. 

Instead, you create your own OS repository based on this template, allowing full customization while leveraging Bluefin's robust build system and shared components.

> ### Be the one who moves, not the one who is moved

So, check out the following files to see what has changed, removed and added:

    /build/10-build.sh:                    edited base applications of Aurora
    
    /custom/brew/default.Brewfile:         adjusted the default applications

    /custom/brew/fonts.Brewfile            enabling nerdfonts
    
    /custom/flatpaks/default.preinstall    flatpaks to be installed at first login

## How to Get There

### First install

    - Install Aurora by using the available iso at https://getaurora.dev/en


## Detailed Guides
- [Homebrew/Brewfiles](custom/brew/README.md) - Runtime package management
- [Flatpak Preinstall](custom/flatpaks/README.md) - GUI application setup
- [ujust Commands](custom/ujust/README.md) - User convenience commands
- [Build Scripts](build/README.md) - Build-time customization

### Benefits of This Architecture

- **Modularity**: Compose your image from reusable OCI containers
- **Maintainability**: Update shared components independently
- **Reproducibility**: Renovate automatically updates OCI tags to SHA digests
- **Consistency**: Share components across Bluefin, Aurora, and custom images

## Community

- [Universal Blue Discord](https://discord.gg/WEu6BdFEtp)
- [bootc Discussion](https://github.com/bootc-dev/bootc/discussions)

## Learn More

- [Universal Blue Documentation](https://universal-blue.org/)
- [bootc Documentation](https://containers.github.io/bootc/)
- [Video Tutorial by TesterTech](https://www.youtube.com/watch?v=IxBl11Zmq5wE)

