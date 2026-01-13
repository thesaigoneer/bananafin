# Aurorix-Saigon
<img width="1920" height="1080" alt="Screenshot_20260113_152113" src="https://github.com/user-attachments/assets/d28d3033-eca6-459c-a896-2ed3405e476c" />

A template, building custom bootc operating system images based on the lessons from [Universal Blue](https://universal-blue.org/) and [Bluefin](https://projectbluefin.io). 

I called it Aurorix-Saigon, bcs the hard work has been done with Aurora already and all my spins have Asterix & Obelix inspired names. **Unlike previous templates, you are not modifying Bluefin and making changes.** I assembled my own Aurora in the same exact way that Bluefin, Aurora, and Bluefin LTS are built. This is way more flexible and better for everyone since the image-agnostic and desktop things from Bluefin live in @projectbluefin/common. 

So, I created my own OS repository based on this template and the **latest version of Aurora**, allowing full customization while leveraging Bluefin's robust build system and shared components.

Check out the following files to see what has changed, removed and added:

    /build/10-build.sh:                    edited base applications of Aurora
    
    /custom/brew/default.Brewfile:         adjusted the default applications

    /custom/brew/fonts.Brewfile            enabling nerdfonts
    
    /custom/flatpaks/default.preinstall    flatpaks to be installed at first login

## How to Get There

### Initial install

    - Install Aurora by using the available iso at https://getaurora.dev/en

### First login

    - When asked to enable SecureBoot and enroll the key use the passphrase 'universalblue'

### Rebase to Aurorix

    - sudo bootc switch ghcr.io/thesaigoneer/aurorix-saigon:stable
    
### Enter Aurorix

    - flatpaks will be installed in the background
    - in the cli run 'ujust install-default-apps'
    - in the cli run 'ujust install-fonts'

The last two commands will brew your cli apps and nerd fonts so they are ready to use.

    # Modern cli apps that will be installed:                   # Fonts that will be added:
    bat        # cat with syntax highlighting                   font-fira-code-nerd-font 
    eza        # Modern replacement for ls                      font-jetbrains-mono-nerd-font
    fd         # Simple, fast alternative to find               font-meslo-lg-nerd-font
    fzf        # fuzzy finder                                   font-ubuntu-nerd-font
    rg         # ripgrep - faster grep                          font-source-code-pro
    yazi       # filemanager  

    # Development tools
    git        # Git version control
    micro      # editor
    vim        # need I say more

    # Shell enhancements  
    starship   # Cross-shell prompt
    zoxide     # Smarter cd command

    # Utilities
    btop       # Interactive process viewer
    mc         # Midnight Commander
    tmux       # Terminal multiplexer

Obviously you can brew a lot more, remove casks or pour more. Remove or add flatpaks through Bazaar. These additions are just a quick headstart!

Aurora comes with a number of default applications installed through flatpak. I like to clean them out (some of them i don't use or are Gnome applications), so I wrote a ujust command for that:

    - in the cli run 'ujust remove-deafult-flatpaks'

After that you'll be left with my choice. And don't forget:

    - in the cli run 'ujust aurora-cli'  # for all your additional cli bling and functionality

## Final remarks

Feel free to use this build and configs as you like. 

I do not, however, imply any form of support or ongoing maintenance. And of course, you use them entirely at your own risk.

Having said that, I do hope you enjoy Aurorix-Saigon!
