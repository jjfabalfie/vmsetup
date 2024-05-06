#!/bin/bash
# To run this script you will have to use the command "ssh user@ipaddress 'bash -s' vmsetup.sh
echo "|___________________________________________________________________|"
echo "|                                                                   |"
echo "|        ░▒▓█▓▒░      ░▒▓█▓▒░▒▓████████▓▒░▒▓██████▓▒░░▒▓███████▓▒░  |"
echo "|        ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ |"
echo "|        ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ |"
echo "|        ░▒▓█▓▒░      ░▒▓█▓▒░▒▓██████▓▒░░▒▓████████▓▒░▒▓███████▓▒░  |"
echo "| ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ |"
echo "| ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ |"
echo "|  ░▒▓██████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░  |"
echo "|___________________________________________________________________|"

GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
NOCOLOR="\e[0m"
echo -e "${BOLDGREEN}Installing Nala a better version of apt.${NOCOLOR}"
sudo apt install nala -y
sleep 1
echo -e "${BOLDGREEN} Reaching out to get update ${NOCOLOR}"
sudo apt-get update -y
echo -e "${BOLDGREEN}  Executing Update command ${NOCOLOR} "
sudo nala update
sudo nala upgrade -y
echo -e "${BOLDGREEN}Installing Docker.io ${NOCOLOR}"
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo groupadd docker
sudo usermod -aG docker $USER
echo "--------------------------"
echo "                          "
echo "  Now Reebooting Standby  "
echo "                          "
echo "--------------------------"
sleep 2
reboot
