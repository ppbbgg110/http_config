#!/bin/bash
cp ./rc.local.service /lib/systemd/system/ &&\
cp -rf ./rc.local /etc/ &&\
chmod +x /etc/rc.local &&\
ln -s /lib/systemd/system/rc.local.service /etc/systemd/system/   &&\
systemctl status rc.local.service  &&\
service rc.local start
