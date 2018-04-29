cd /root/libpcap-1.8.1/Cloud-Radar-Plus
read -p "请输入服务器内网ip： " ip
forever start index.js sniff eth0 $ip | pino
echo "启动完成 By:XiaohuaCN QQ:839387596 请使用你的浏览器打开 服务器的 公网IP 后面加上:20086 查看雷达界面 如我的公网IP是127.0.0.1 那雷达网址就是127.0.0.1:20086"
