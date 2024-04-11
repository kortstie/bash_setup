# Create a devops workbench

![title](images/title.jpg)

## What will you get?

- install wsl ubuntu
- update ubuntu
- install tools like:
    - podman
    - ansible
    - helm
    - kubectl
- Azure CLI

## Install ubuntu wsl

    wsl --install ubuntu

## all-in-one (or look at setup.sh)

    curl -sL https://raw.githubusercontent.com/kortstie/wsl_setup/main/setup.sh > /tmp/setup.sh && chmod 755 /tmp/setup.sh && /tmp/setup.sh
    
Restart WSL now.
Command:

    wsl shutdown ubuntu

And Start it again:

    wsl
