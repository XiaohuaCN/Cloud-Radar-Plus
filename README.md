#  Cloud Radar+
什么年代了 你还在用虚拟机? 两台电脑? 局域网? JAVA? 用了加速器就失效的雷达?

醒一醒现在是2018年了 Cloud 云服务时代  

只要有浏览器(不限设备 手机电脑 平板随意) 只要有网络(不限网络 手机4G 还是电脑宽带)

打开浏览器输入网址即可享用雷达!

# 2018/04/27/18:37
![image](https://github.com/XiaohuaCN/Cloud-Radar-Plus/blob/master/static/assets/1.png)
Fixed an issue where the enemy could not be displayed.

修复由于游戏版本大更新,导致敌人不在雷达上显示的问题.

# ======================================
Tutorial By:XiaohuaCN  

# 首先你要有一台 云服务器.
1.服务器供应商随便你选择. 如腾讯云 阿里云 网易云 主机屋 谷歌云 等.

2.服务器地区选择大陆以外的地区.(这样的好处就是 你的服务器即有雷达的效果 还有类似网络加速器的效果 加速游戏减少延迟)

推荐地区选择亚洲 或者东南亚的,如 台湾 香港 新加坡 韩国 等.

3.你的服务器必须支持UDP转发 否则雷达不会动

4.选择服务器的时候 要选择云服务器  不是什么 网页空间 不是什么搭建网页的那种服务器.

5.如果你开通服务器的时候 有类似安全的 选项  请选择 放通全部端口,不然要映射各种端口.

6.服务器的系统选择  CentOS 7.2 64位 ~ CentOS 7.4 64位

6.服务器配置推荐: 地区:大陆以外 CPU双核 2G内存 带宽20M或以上(这影响着你雷达反应速度)

CPU和内存可以单核和1G 只是搭建SS代理的时候比较慢而已!.



# ======================================
- [使用脚本 少量代码自动搭建雷达教程](#使用脚本搭建教程) 

- [打开雷达网页出现拒绝访问?](#打开雷达网页显示拒绝访问) 

- [手动自己一步一步输入代码教程](#第一步我们需要用软件连接你自己购买的服务器) 

Tutorial By:XiaohuaCN  

# ======================================





# 第一步我们需要用软件连接你自己购买的服务器
这里我们使用- [Xshell 5](https://share.weiyun.com/52F9uF9) 连接 

打开- [Xshell 5](https://share.weiyun.com/52F9uF9) 后会出现一个弹窗

我们点击新建 - 第一栏名称随便 - 协议SSH - 主机(填写你购买的服务器的公网IP) 

然后看左边 有一个黑体字的 "用户省份验证" 我们点击后  上面的用户名 输入root

密码就是你购买服务器时候 设置的密码.

然后我们点击确定,然后连接..

- [使用脚本 少量代码自动搭建雷达教程](#使用脚本搭建教程) 

# 先吧自己的服务器变成一个 SS 代理
复制时 请选中"内"的内容  不要选到"" 这两个符号.

在- [Xshell 5](https://share.weiyun.com/52F9uF9) 的窗口内 在下面输入 " "内的内容后按回车

"wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh"


"chmod +x shadowsocks-all.sh"

"./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log"

执行完这行代码后会让你选择 你是选择搭建单独SS还是SSR 更具自己需求 默认是第一个SS

回车!

之后会让你设置一个连接SS的密码Password 自己设置

回车!

然后会让你选择一个端口 port(1~65535)   自行选择

回车!

最后是让你选择加密协议  直接按回车默认即可  aes-256-gcm !

之后就是按任意键开始搭建你的SS服务器.[搭建时间更具你服务器配置来决定 如果你服务器配置较低可能时间会比较长]

搭建完成后会出现 [红色字]

服务器IP 设置好的 端口号 密码 加密方式等. 这样就表示你的SS服务器搭建完成了

# 测试连接你的SS是否正常
下载- [SSTap](https://share.weiyun.com/56wRJOW) 解压打开SSTap

[杀软记得信任 或者选择总是允许 不然你以后玩着玩着杀软就会把这个 加速器直接杀掉 导致游戏服务器断开 雷达不会动]


打开后选择代理 右边的+号  添加SS/SSR代理 - 服务器IP就是你服务器的公网IP - 端口和密码就是你自己之前搭建设置的 - 加密协议不要选错了你之前搭建的时候选的是什么就是什么,默认是aes-256-gcm  - 最后下面的 [√] 添加并激活使用


添加完成后 点击+号 右右右边的 闪电标志 测试一下你的SS代理是否正常  如果显示红色字样

检查你SS是否搭建成功 以及你服务器的 SS端口是否开放.

TCP 和 UDP 必须都是绿色字 才算成功.

如果都成功了 表示你的SS代理搭建成功了!



# 安装雷达前 还需要安装nodejs  npm  和 libpcap (和之前一样一行一行复制 慢慢来不要急)

如何查看你按回车后 这行代码是否执行完毕了 可以进行下一行代码了?

当你的- [Xshell 5](https://share.weiyun.com/52F9uF9)  窗口内出现[root@ ****** centos~]# 

的时候就可以执行下一行代码了

"curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash"

"source ~/.bash_profile"

"nvm install v9.8.0"

"nvm alias default v9.8.0"



# 安装libpcap

"yum -y install gcc-c++"

"yum -y install flex"

"yum -y install bison"

"wget http://www.tcpdump.org/release/libpcap-1.8.1.tar.gz"

"tar -zxvf libpcap-1.8.1.tar.gz"

"cd libpcap-1.8.1"

"./configure"

"make"

"make install"



# 最后安装雷达

"yum install git"

"git clone https://github.com/XiaohuaCN/Cloud-Radar-Plus"

"cd Cloud-Radar-Plus/"

"npm i"

"npm i -g pino"

"npm install -g forever"

"forever start index.js sniff eth0 XX.XX.XX.XX | pino"

(此处的XX填写 你购买的服务器的内网IP )


# 打开浏览器尝试连接雷达

搭建完成雷达后 我们打开浏览器 输入你的 服务器公网IP 也就是你SS的IP 后面加上:20086

如我的公网IP是127.0.0.1 在浏览器内打开的就是 127.0.0.1:20086

然后回车即可看到雷达的网页界面. 如果发现拒绝访问

请检查你的IP是否是你服务器公网的IP  还有就是20086端口是否映射了(如果是放通全部端口的服务器 就不用映射了).


# 如何上游戏玩耍

- [想要测试你的SS是否连接正常](#测试连接你的SS是否正常)

打开- [SSTap](https://share.weiyun.com/56wRJOW)  模式选择 绝地求生所有服!.

然后点击连接. 连接后进入游戏, 开始匹配后即可在 雷达网页内看到你自己所在的位置.以及敌人的位置.







# 使用脚本搭建教程

复制时 请选中"内"的内容  不要选到"" 这两个符号.

- [1.连接自己的服务器](#第一步我们需要用软件连接你自己购买的服务器) 

连接后在 - [Xshell 5](https://share.weiyun.com/52F9uF9)内输入

"yum install git"

会显示[Y/N] 按Y回车 等待执行完成~

"git clone https://github.com/XiaohuaCN/1JLD"

"cd 1JLD/"

"chmod u+x 1.sh"

"./1.sh"

之后就可以按照提示 操作 自动搭建SS和雷达.

输入自己服务器内网IP后 会自动出现搭建SS代理服务器的选项

第一个是让你选择搭建的代理形式SS还是SSR (一般直接回车默认Shadowsocks-Pytohn)

之后会让你设置一个连接SS的密码Password 自己设置

然后会让你选择一个端口 port(1~65535)   自行选择

最后是让你选择加密协议  直接按回车默认即可  aes-256-gcm !

最后就是按任意键开始搭建你的SS服务器. [搭建时间更具你服务器配置来决定 如果你服务器配置较低可能时间会比较长]


- [测试连接你的SS是否正常](#测试连接你的SS是否正常)

之后按照提示会自动安装雷达.


- [最后上游戏吧!](#如何上游戏玩耍) 


# 教程结束!
By:XiaohuaCN  

QQ:839387596

# Peace!







# 打开雷达网页显示拒绝访问

-----如果是直接拒绝访问打不开.

请检查你的雷达是否搭建成功 服务器内网IP是否填写正确! 是否吧SS端口和20086端口映射




-----如果你是玩游戏 玩着玩着出现的

打开 - [Xshell 5](https://share.weiyun.com/52F9uF9)  连接你服务器 输入

"forever start index.js sniff eth0 XX.XX.XX.XX | pino"

(此处的XX填写 你购买的服务器的内网IP 然后开始玩游戏 等待5~10分钟后在关闭Xshell 5 )




----如果你是服务器重启后出现的请

打开 - [Xshell 5](https://share.weiyun.com/52F9uF9)  连接你服务器 输入

"forever start index.js sniff eth0 XX.XX.XX.XX | pino"

(此处的XX填写 你购买的服务器的内网IP )

回车即可!


