#!/bin/sh

apt-get -y install shadowsocks

lIp=`ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"`

echo "backup /etc/shadowsocks/config.json"
cp /etc/shadowsocks/config.json /etc/shadowsocks/config.json_bak

cat <<EOF > /etc/shadowsocks/config.json
{
    "server":"$lIp",
    "server_port":8388,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"password",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false,
    "workers": 1
}
EOF

echo "service shadowsocks start ..."
service shadowsocks restart

service shadowsocks status
