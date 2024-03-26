# My Bash Setup

# Ubuntu Upgrade

sudo apt-get update && sudo apt-get -y dist-upgrade

# Install some stuff

sudo apt -y install fzf jq podman pip net-tools

pip3 install ansible ansible-lint



# Install fzf Key Bindings
echo ". /usr/share/doc/fzf/examples/key-bindings.bash" >> ~/.bashrc

# Add ~/.local/bin to path
echo "export PATH=\$PATH:\$HOME/.local/bin" >> ~/.bashrc




