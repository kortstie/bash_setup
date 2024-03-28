# Prerequisites - Prepare your environment

### Ubuntu Upgrade

    sudo apt-get update && sudo apt-get -y dist-upgrade

### Install some usefull stuff

    sudo apt -y install fzf jq podman pip net-tools
    pip3 install ansible ansible-lint

### Install fzf Key Bindings
    echo ". /usr/share/doc/fzf/examples/key-bindings.bash" >> ~/.bashrc

### Add ~/.local/bin to path
    echo "export PATH=\$PATH:\$HOME/.local/bin" >> ~/.bashrc

### Fix podman error under ubuntu 22.4
    sudo apt install dbus-user-session

*Restart wsl now!*

### Get Azure CLI
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

### #Get, install and configure kubectl
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

    kubectl completion bash > ~/.local/completion.bash.inc
    printf "

    # kubectl shell completion
    source '$HOME/.local/completion.bash.inc'
    alias oc=kubectl
    complete -o default -F __start_kubectl k
    " >> $HOME/.bashrc
    source $HOME/.bashrc

### Git setup
    git config --global user.name "Frank Kortstiege"
    git config --global user.email "you@example.com"
