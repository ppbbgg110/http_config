#!/bin/bash

echo "{" >> config.json
echo "  "log": {" >> config.json
echo "    "access": "/etc/v2ray/log/access.log"," >> config.json
echo "    "error": "/etc/v2ray/log/error.log"," >> config.json
echo "    "loglevel": "debug"" >> config.json
echo "  }," >> config.json
echo "  "dns": {}," >> config.json
echo "    "api": {" >> config.json
echo "        "tag": "api"," >> config.json
echo "        "services": [" >> config.json
echo "            "HandlerService"," >> config.json
echo "            "LoggerService"," >> config.json
echo "            "StatsService"" >> config.json
echo "        ]" >> config.json
echo "    }," >> config.json
echo "    "policy": {" >> config.json
echo "        "levels": {" >> config.json
echo "            "0": {" >> config.json
echo "                "statsUserUplink": true," >> config.json
echo "                "statsUserDownlink": true" >> config.json
echo "            }," >> config.json
echo "            "1": {" >> config.json
echo "                "statsUserUplink": true," >> config.json
echo "                "statsUserDownlink": true" >> config.json
echo "            }" >> config.json
echo "        }," >> config.json
echo "        "system": {" >> config.json
echo "            "statsInboundUplink": true," >> config.json
echo "            "statsInboundDownlink": true" >> config.json
echo "        }" >> config.json
echo "    }," >> config.json
echo "  "stats": {}," >> config.json
echo "  "inbounds": [" >> config.json
echo "    {" >> config.json
echo "      "tag":"first"," >> config.json
echo "      "port": SERVICE_PORT," >> config.json
echo "      "protocol": "vmess"," >> config.json
echo "      "settings": {" >> config.json
echo "        "clients": [" >> config.json
echo "          {" >> config.json
echo "            "email": "USER_MAIL"," >> config.json
echo "            "id": "UUID"," >> config.json
echo "            "level":0," >> config.json
echo "            "alterId": ALTER_ID" >> config.json
echo "          }" >> config.json
echo "        ]" >> config.json
echo "      }," >> config.json
echo "      "tag": "in-0"," >> config.json
echo "      "streamSettings": {" >> config.json
echo "        "network": "tcp"," >> config.json
echo "        "security": "none"," >> config.json
echo "        "tcpSettings": {}" >> config.json
echo "      }" >> config.json
echo "    }," >> config.json
echo "" >> config.json
echo "            {" >> config.json
echo "            "listen": "127.0.0.1"," >> config.json
echo "            "port": API_PORT," >> config.json
echo "            "protocol": "dokodemo-door"," >> config.json
echo "            "settings": {" >> config.json
echo "                "address": "127.0.0.1"" >> config.json
echo "            }," >> config.json
echo "            "tag": "api"" >> config.json
echo "        }" >> config.json
echo "  ]," >> config.json
echo "  "outbounds": [" >> config.json
echo "    {" >> config.json
echo "      "tag": "direct"," >> config.json
echo "      "protocol": "freedom"," >> config.json
echo "      "settings": {}" >> config.json
echo "    }," >> config.json
echo "    {" >> config.json
echo "      "tag": "blocked"," >> config.json
echo "      "protocol": "blackhole"," >> config.json
echo "      "settings": {}" >> config.json
echo "    }" >> config.json
echo "  ]," >> config.json
echo "" >> config.json
echo "" >> config.json
echo "        "routing": {" >> config.json
echo "                "settings": {" >> config.json
echo "                        "rules": [" >> config.json
echo "                                {" >> config.json
echo "                                        "inboundTag": [" >> config.json
echo "                                                "api"" >> config.json
echo "                                        ]," >> config.json
echo "                                        "outboundTag": "api"," >> config.json
echo "                                        "type": "field"" >> config.json
echo "                                }" >> config.json
echo "                        ]" >> config.json
echo "                }," >> config.json
echo "                "strategy": "rules"" >> config.json
echo "        }" >> config.json
echo "" >> config.json
echo "}" >> config.json
echo "" >> config.json
