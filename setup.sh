#!/bin/bash

read -p "Enter your name: " name
read -p "Enter your email: " email

### Ubuntu Upgrade
sudo apt-get update && sudo apt-get -y dist-upgrade

### Install some usefull stuff
sudo apt -y install fzf jq podman pip net-tools
pip3 install ansible ansible-lint flask

### Install fzf Key Bindings
echo ". /usr/share/doc/fzf/examples/key-bindings.bash" >> ~/.bashrc

### Add ~/.local/bin to path
echo "export PATH=\$PATH:\$HOME/.local/bin" >> ~/.bashrc

### Fix podman error under ubuntu 22.4
sudo apt -y install dbus-user-session

### Get Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

### Get, install and configure kubectl
curl -sLO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

kubectl completion bash > ~/.local/completion.bash.inc
printf "

# kubectl shell completion
source '$HOME/.local/completion.bash.inc'
alias oc=kubectl
complete -o default -F __start_kubectl oc
" >> $HOME/.bashrc
source $HOME/.bashrc

### Git setup
git config --global user.name "$name"
git config --global user.email "$email"

### Create ssh key
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -q -N ""

### Install Helm
curl -sL "https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3" | sudo bash

