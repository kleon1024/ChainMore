apt update

# Install docker-ce & docker-compose
apt install -y docker-ce docker-compose

# Install zsh for dev-op
apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
