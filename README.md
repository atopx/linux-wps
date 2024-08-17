# linux-wps

Linux 打包 安装 WPS365 (wps-office_12.8.2.17001)


# 已测试

- ubuntu 22.04
- ubuntu 24.04

![](image.png)


# 一键安装

### wget

```sh
wget -qO- https://raw.githubusercontent.com/atopx/linux-wps/master/install.sh | bash
```

### curl
```sh
curl -sSL https://raw.githubusercontent.com/atopx/linux-wps/master/install.sh | bash
```

# 常见问题

### 重置试用期

```sh
rm -rf $HOME/.config/Kingsoft $HOME/.local/share/Kingsoft
```

### 神秘代码

```sh
694BF-YUDBG-EAR69-BPRGB-ATQXH
# 使用后执行
sudo chmod 444 /opt/kingsoft/.auth/license2.dat
```
