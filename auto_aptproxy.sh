#!/bin/bash



mv -rf /etc/apt/sources.list /etc/apt/sources.list.bak


echo "deb http://archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse " >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse" >> /etc/apt/sources.list

echo "deb http://archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse" >> /etc/apt/sources.list

echo "deb http://archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse" >> /etc/apt/sources.list

echo "deb http://archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list

echo "deb http://archive.canonical.com/ubuntu focal partner" >> /etc/apt/sources.list
echo "deb-src http://archive.canonical.com/ubuntu focal partner" >> /etc/apt/sources.list


#/local/v2ray/v2ray -config /local/v2ray/client.json &

#cd /local
#export http_proxy=socks://127.0.0.1:10808
#export https_proxy=socks://127.0.0.1:10808
#export http_proxy=http://127.0.0.1:10808

