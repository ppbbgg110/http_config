#!/bin/bash

sudo apt update &&\
sudo apt-get install wget docker docker.io python python-pip curl -y && \
sudo docker pull v2ray/official 
