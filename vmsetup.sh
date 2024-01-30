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
sudo nala install docker.io -y
echo -e "${BOLDGREEN}Installing Docker Compose ${NOCOLOR}"
sudo nala install docker-compose -y
echo -e "${BOLDGREEN}Testing Docker Install ${NOCOLOR}"
docker run hello-world
sleep 1
echo -e "${BOLDGREEN}Logging out of machine${NOCOLOR}"
exit
