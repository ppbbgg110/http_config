#!/bin/bash

username=$1;
sudo docker stop v2ray.$1 &&\
sudo docker rm v2ray.$1
