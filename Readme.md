# Prerequisites - Prepare your environment

Setup a basic working environment using ubuntu wsl. You will get:

- Updated ubuntu
- Tools like:
-- podman
-- ansible
-- helm
-- kubectl
- Azure CLI

### Just follow these steps to get started

    wsl --install ubuntu

Update ubuntu and install additional tools

    curl -sL https://raw.githubusercontent.com/kortstie/wsl_setup/main/setup.sh > /tmp/setup.sh && chmod 755 /tmp/setup.sh && /tmp/setup.sh
    
Restart WSL now.
Command:

    wsl shutdown ubuntu

And Start it again:

    wsl
