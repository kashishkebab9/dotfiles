#!/usr/bin/env bash

echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢰⣶⣶⣶⠀⣶⣶⣶⣶⠀⢰⣶⣶⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⣿⣿⣿⣿⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢠⣤⣤⣤⠀⢠⣤⣤⣤⠀⣤⣤⣤⣤⠀⢠⣤⣤⣤⠀⣰⣿⣿⣦⡀⠀⠀⠀⠀
⠀⢸⣿⣿⣿⠀⢸⣿⣿⣿⠀⣿⣿⣿⣿⠀⢸⣿⣿⣿⠀⣿⣿⠹⣿⣷⣀⠀⠀⠀
⠀⠘⠛⠛⠛⠀⠘⠛⠛⠛⠀⠛⠛⠛⠛⠀⠘⠛⠛⠛⢀⣿⣿⡀⠙⠿⠿⣿⣶⣆
⣴⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⠟⢁⣤⣴⣶⣾⡿⠋
⣿⣿⣿⣛⣛⣛⣛⣿⣟⣛⣛⣻⣿⣟⣛⣛⣻⣿⣟⣋⣉⣠⣤⣾⣿⣟⣻⣍⠀⠀
⢹⣿⣿⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠋⠀⠀⠀⠀⠀
⠈⢻⣿⣿⣿⡿⠿⠿⠿⠛⠉⠀⠀⠀⠀⠀⢀⣠⣴⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠙⢿⣿⣿⣶⣦⣤⣤⣤⣤⣤⣴⣶⣿⣿⣿⣿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⠙⠛⠛⠿⠿⠿⠿⠿⠛⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"

bash -c "printf '\n'"
printf "This is a guide to help with docker"
printf "\n"
printf "Author: Kashish Garg"
printf "\n"
printf "\n"
echo "You can visit www.hub.docker.com to find specific images to download"
echo "A good analogy for Docker images and containers are classes and objects"
echo "A container is essentially an instance of an image"

printf "\n"
echo "Once you find an image you want to start using, you need to 'pull' it to your local machine:"
printf "\n"
echo "docker pull DOCKER_IMAGE"
printf "\n"
echo "In order to actually create a useable container, you must use 'docker run':"
printf "\n"
echo "docker run -it --name master DOCKER_IMAGE"
printf "\n"
echo "Seen above, -it means 'interactive', which allows users to execute commands while the container is in a running state"
echo "The --name option is helpful, we are essentially naming this container (not the image) 'master'"
echo "This can be seen by running:"
printf "\n"
echo "$ docker ps -a
CONTAINER ID   IMAGE        COMMAND                  CREATED         STATUS         PORTS     NAMES
60f22d21c061   ros:noetic   "/ros_entrypoint.sh …"   5 seconds ago   Up 4 seconds             master"
printf "\n"
echo "To interact with this container in another terminal, run the following: "
printf "\n"
echo "docker exec -it master bash"
printf "\n"
echo "As seen above, this will open the master container in an interactive bash session"
echo "And the beauty of this is that now I can essentially use this session as if it were an ubuntu vm on a mac"
printf "\n"
echo "To remove the docker container, simply run:"
printf "\n"
echo "docker rm -f master"
printf "\n"
echo "If you have a Dockerfile you want to run a container from, go to the directory of that file and simply run: "
printf "\n"
echo "docker build ."






