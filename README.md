# RVEMU
简易的RISC-V架构模拟器

# 环境搭建
1.创建docker容器,相关脚本放在`/docker`目录下

2.进入容器,安装必要依赖

2.1 换源
```bash
sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
sed -i s@/security.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
apt-get clean
apt-get update
```

2.2 安装依赖
```bash
apt-get install -y clang make
```

2.3 安装交叉编译工具链

- 先去git下载编译好的交叉编译工具链

- 解压到本地
```bash
tar -zxvf riscv64-elf-ubuntu-20.04-nightly-2023.04.21-nightly.tar.gz

# 解压后生成的文件为`riscv`
```
- 配置环境变量
```bash
vim ~/.bashrc
export PATH=$PATH:/riscv/bin
```