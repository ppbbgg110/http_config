#!/bin/bash

if [ $1 = "add" ];then

{
username=$2;
service_port=$3;
uuid=`cat /proc/sys/kernel/random/uuid`;
alter_id=12;
api_port=$4;



pwd=`pwd`;
sed  -e  "36s/SERVICE_PORT/$service_port/g" -e"41s/USER_MAIL/$username/g" -e "42s/UUID/$uuid/g" -e "44s/ALTER_ID/$alter_id/g" -e "58s/API_PORT/$api_port/g" config.json >./config/$username.config.json  &&\
sudo docker run --restart always -d --name v2ray.$username -v $pwd:/etc/v2ray -p $service_port:$service_port -p $api_port:$api_port v2ray/official  v2ray -config=/etc/v2ray/config/$username.config.json &&\


sudo docker exec v2ray.$username v2ctl api --server=127.0.0.1:$api_port StatsService.GetStats 'name: "user>>>'$username'>>>traffic>>>downlink" reset: false'|grep value|awk '{print $2}'
}
#!/bin/bash
elif [ $1 = "del" ];then
{
username=$2;
sudo docker stop v2ray.$2 &&\
sudo docker rm v2ray.$2 && echo "删除成功"
}
fi
