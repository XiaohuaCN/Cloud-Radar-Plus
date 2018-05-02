#!/bin/bash
echo "欢迎使用一键搭建 脚本"
echo "即将搭建的是Xiaohua Cloud Radar v1.1+版本"
echo "准备开始安装"
read -p "回车后开始安装"
echo "请输入 你服务器的 内网ip" 
read -p "内网ip： " ip
wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks-all.sh
./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log

echo "ss搭建成，请记住连接信息.[记得用SSTap 测试一下搭建的节点是否可用哦!]"
read -p "记住了吗？任意键继续.[接下来将自动安装雷达!]" 

curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash
source ~/.bash_profile
nvm install v9.8.0
nvm alias default v9.8.0
yum -y install gcc-c++
yum -y install flex
yum -y install bison
wget http://www.tcpdump.org/release/libpcap-1.8.1.tar.gz
tar -zxvf libpcap-1.8.1.tar.gz
cd libpcap-1.8.1
./configure
make
make install

git clone https://github.com/XiaohuaCN/Cloud-Radar-Plus.git
cd Cloud-Radar-Plus/
npm i
npm i -g pino
npm install -g forever
forever start index.js sniff eth0 $ip | pino

echo "搭建完成 ! 请使用你的浏览器打开 服务器的 公网IP 后面加上:20086 查看雷达界面 如我的公网IP是127.0.0.1 那雷达网址就是127.0.0.1:20086"
