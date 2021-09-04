# syntax=docker/dockerfile:1
FROM arranhs/dockursim:latest

RUN /bin/bash -c "apt-get update &&\
    apt install -y git &&\
    git clone https://github.com/suho0515/ur-externalcontrol.git /ur-externalcontrol"
