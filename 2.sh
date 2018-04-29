#!/bin/bash
echo "欢迎使用一键[重新安装并启用 雷达] 脚本"
echo "即将 重装并启用 的是Xiaohua Cloud Radar v1.1+版本"
echo "准备开始重装 "
read -p "回车后开始安装"
echo "请输入 你服务器的 内网ip" 
read -p "内网ip： " ip
cp /root/winnerpubg/restart.sh /root/restart.sh
chmod +x restart.sh

read -p "任意键继续.[注意]是重装.不是安装.前提是你有安装过了SS和雷达了 如果你以前没有安装过请按Ctrl+C 终止操作" 

git clone https://github.com/XiaohuaCN/Cloud-Radar-Plus.git
cd Cloud-Radar-Plus/
npm i
npm i -g pino
npm install -g forever
forever start index.js sniff eth0 $ip | pino

echo "重装完成 ! 请使用你的浏览器打开 服务器的 公网IP 后面加上:20086 查看雷达界面 如我的公网IP是127.0.0.1 那雷达网址就是127.0.0.1:20086"
