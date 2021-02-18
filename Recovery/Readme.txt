该文件夹是r1d回刷原厂的全部文件

List:
nvrambak.bin 备份文件
dd-r1d-2015.6.28.trx dd-wrt

tomato回刷原厂全过程应该是这样的：
第一步，tomato通过系统升级（update）刷机dd-wrt  
dd-wrt 下载  http://pan.baidu.com/s/1i4VMtd7
小米路由器R1D玩机之五回刷原厂系统
第二步，打开dd-wrt系统的SSH
其一，下载备份文件nvrambak.bin    （ http://pan.baidu.com/s/1o8prJ3W）
其二，在dd-wrt系统上方依次点击： 管理--备份--选择文件--恢复
其三，等待恢复完毕，重启，即可以用Xshell 4或者putty.exe之类打开SSH操作。
小米路由器R1D玩机之五回刷原厂系统
第三步，把我们在玩机二里面备份的文件拿出来用吧。（不要说你没有备份啊，你的机器的SN，MAC以及SSID都在里面呢！）
http://blog.sina.com.cn/s/blog_680965aa0102yfxj.html
用winscp把文件 stock.trx 和 cfe.bin 上传到tmp
第四步，通过Xshell 操作：
cd /tmp                            回车                           
.mtd write cfe.bin boot         回车
mtd write stock.trx linux        回车
小米路由器R1D玩机之五回刷原厂系统
当出现上述情况，说擦写失败时，不用理它。
第五步，重启reboot，等待黄灯变蓝灯，如果黄灯继续，2分钟以上可以关机。
第六步，回刷原厂系统。
其一，将小米官网下载的小米R1D的U盘刷机包（改名miwifi.bin）放到U盘中。
其二，按reset（复位）键，重新接电源，等黄灯闪烁后松开reset键（这个时间比一般刷机稍长，耐心等待）。
其三，5-8分钟后黄灯转蓝灯，拔下U盘。
其四，从浏览器进入小米路由后台，更新最新开发版。
回刷成功，小米还是小米，开心重新开始玩机吧！