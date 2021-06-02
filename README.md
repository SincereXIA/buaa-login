# BUAA-login 

北航校园网络自动认证脚本 **for OpenWrt**

本项目旨在使搭载 Openwrt 的路由器设备自动连接校园网

由于 Openwrt 不支持 WPA2-Enterpise 无线中继，因此可以使用此脚本自动认证 BUAA-WIFI 网络

脚本来源：https://github.com/jqqqqqqqqqq/BeihangLogin



## 使用方法

**上网不涉密，涉密不上网！**

位于 src 目录下的 `buaa-login.sh` 可以在 Linux/Unix 环境下单独使用

可以手动拷贝 `src/buaa-login.sh` 到 openwrt 的 `/usr/sbin` 目录下，之后执行命令

```bash
buaa-login -u user -p password
```

例如：

```bash
buaa-login -u sy2006100 -p password
```

**注意：OpenWrt 使用该脚本，需要安装 bash**



## 编译到 OpenWrt

若希望编译好的 OpenWrt 固件开机自带该脚本，可以在编译环节加入本项目

**注意：OpenWrt 使用该脚本，需要安装 bash**

```bash
mkdir package/community
cd package/community
git clone --depth=1 https://github.com/SincereXIA/buaa-login.git
make menuconfig
```

前往 Network ---> buaa-login 加入 OpenWrt 镜像

![image-20210602094311663](http://media.sumblog.cn/uPic/2021-06-02image-20210602094311663eMb4Pg.png)

## 接下来可能

- [ ] 开机自启动脚本

- [ ] luci 用户界面

