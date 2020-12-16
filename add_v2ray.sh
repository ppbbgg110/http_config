#!/bin/bash
service_port=$2;
username=$1;
uuid=`cat /proc/sys/kernel/random/uuid`;
alter_id=64;
api_port=$3;



pwd=`pwd`;
sed  -e  "36s/SERVICE_PORT/$service_port/g" -e"41s/USER_MAIL/$username/g" -e "42s/UUID/$uuid/g" -e "44s/ALTER_ID/$alter_id/g" -e "58s/API_PORT/$api_port/g" config.json >./config/$username.config.json  &&\
sudo docker run --restart always -d --name v2ray.$username -v $pwd:/etc/v2ray -p $service_port:$service_port -p $api_port:$api_port v2ray/official  v2ray -config=/etc/v2ray/config/$username.config.json &&\


sudo docker exec v2ray.$username v2ctl api --server=127.0.0.1:$api_port StatsService.GetStats 'name: "user>>>'$username'>>>traffic>>>downlink" reset: false'|grep value|awk '{print $2}'

