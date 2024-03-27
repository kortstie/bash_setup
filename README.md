# My Bash Setup

## Ubuntu Upgrade

sudo apt-get update && sudo apt-get -y dist-upgrade

## Install some stuff

sudo apt -y install fzf jq podman pip net-tools

pip3 install ansible ansible-lint



## Install fzf Key Bindings
    echo ". /usr/share/doc/fzf/examples/key-bindings.bash" >> ~/.bashrc

## Add ~/.local/bin to path
    echo "export PATH=\$PATH:\$HOME/.local/bin" >> ~/.bashrc


## fix podman error under ubuntu 22.4
    sudo apt install dbus-user-session
restart wsl

## azure cli
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bas

## get and install kubectl
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

## Write bash completion code to a file and source it from .bash_profile
    kubectl completion bash > ~/.kube/completion.bash.inc
    printf "
    # kubectl shell completion
    source '$HOME/.kube/completion.bash.inc'
    " >> $HOME/.bash_profile
    source $HOME/.bash_profile
