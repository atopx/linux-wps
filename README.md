# linux-wps

Linux 打包 安装 WPS365 (wps-office_12.8.2.15283)


# 已测试

- ubuntu 24.04

![](image.png)


# 操作步骤

## 1. 克隆仓库

```sh
git clone https://github.com/atopx/linux-wps.git
```

## 2. 安装依赖

```sh
sudo apt-get install -y debhelper-compat=12 patchelf
```

## 3. 解压缩

```sh
mkdir wps-365 && tar -Jxvf wps-365.tar.xz -C wps-365
```

## 4. 打包

```sh
cd wps-365
dpkg-buildpackage -us -uc
```

## 5. 安装

```sh
cd -
sudo dpkg -i wps-office_12.8.2.15283-myubuntu_amd64.deb
```

# 常见问题

### 重置试用期

```sh
rm -rf $HOME/.config/Kingsoft $HOME/.local/share/Kingsoft
```
