Misstar Tools 2.0 离线版 插件手工安装的方法

根据misstar.zip压缩包中readme.txt可以进行安装上Misstar Tools，但是插件无法离线安装，由于tonylei的服务器也好长时间不启动的了，导致插件无法安装，现研究后已经实现了离线安装插件，参考步骤3，安装完后可以把/etc/misstar/mt/目录中不用的插件删除，节省空间。

方法如下：
1. 根据路由器对应文件解压文件，把解压目录（比如小米3路由器为R3）和offline_install.sh到 U盘根目录，并插入路由器
2. ssh登录后，cd到U盘的目录，比如小米3路由器为/extdisks/sda1
       执行下面的命令进行安装Misstra Tools
       cd /extdisks/sda1
       ls
       chmod +x offline_install.sh
       ./offline_install.sh

3. 手动安装插件的命令，appmanager 命令(add/del) 文件名
       parameter=Misstar_Tools@2017
       /etc/misstar/scripts/appmanager add webshell
       /etc/misstar/scripts/appmanager add ftp
       /etc/misstar/scripts/appmanager add rm

       如果需要卸载则执行
       /etc/misstar/scripts/appmanager del rm
       
       插件文件名说明
       ftp                 VSFTP服务器
       rm                        远程管理
       webshell         在线Sheel
       pptpd                基于PPTP的VPN服务器
       koolproxy        Koolproxy广告过滤
       kms                        KMS服务器
       frp                        Frp内网穿透
       aria2                Aria2离线下载器，挂机下载神器
       aliddns                阿里的域名解析插件
       adm                        阿呆喵广告过滤插件