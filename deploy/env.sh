sudo apt-get update && sudo apt-get install -y curl && sudo curl -fsSL https://get.docker.com | sh
sudo curl -L https://github.com/docker/compose/releases/download/1.25.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt-get install -y git python3 python3-pip python3-venv

git clone https://github.com/kleon1024/ChainMore-API-Flask $HOME/chainmore
