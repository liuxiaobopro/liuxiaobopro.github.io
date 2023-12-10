+++
title = 'Linux安装Go'
date = 2023-12-10T12:29:04+08:00
+++



### 下载源码

下载地址: [https://golang.google.cn/dl/](https://golang.google.cn/dl/)

### 创建GOPATH目录

```
gopath
├──pkg
├──bin
└──src
```

### 解压

```
# 删除原有(可选)
rm -rf /usr/local/go 
# 解压
tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz
```

## 配置环境变量

- 编辑

```
vi /etc/profile
```

- 将内容写到左后

```
export GOROOT=/usr/local/go
export GOPATH=/root/liuxiaobo/env/go/path
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
```

## 修改代理
```
export GO111MODULE=on
export GOPROXY=https://goproxy.cn
```

## 刷新配置
```
source /etc/profile
```

## 检验

```
go version
```