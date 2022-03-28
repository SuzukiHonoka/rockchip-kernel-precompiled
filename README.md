# 介绍

这是一个为 **Rockchip 系列 CPU** 编译 **Linux Kernel** 的 CI 仓库，由 **Starx** 进行维护。
 
## 构建状态
[![Rockchip KERNEL CI](https://github.com/SuzukiHonoka/rockchip-kernel-precompiled/actions/workflows/main.yml/badge.svg)](https://github.com/SuzukiHonoka/rockchip-kernel-precompiled/actions/workflows/main.yml)

## 温馨提示

**为优化内核用于服务器环境使用，已最大程度去除次要组件，故不适用于桌面环境。**

## 安装步骤

  1. 下载 **release** 中的内核
  2. 解压
  3. 使用 `dpkg -i *deb` 安装内核包
  4. 将 **dtb** 文件全部复制到 **boot** 分区对应的路径，并确保启动环境中的 **dtb** 指向正确
  5. 将 **Image** 文件覆盖到 **boot** 分区中的原文件
  6. 使用 `sync` 将缓存写入后重启 

## 已知问题

使用 `reboot` 命令关机后无法启动，需要手动拔插电源。 (有大佬可以教教吗)

## 感谢

- 使用了 **flippy** 的仓库，该仓库完美适配 rockchip 系列 CPU，追加了 **HW-RNG、DMA** 等超多上游没有包含的特性。
- 使用了 **Github Action** 进行编译

## 分享

本仓库内的所有资源**禁止分享至恩山论坛** ，其他群组、网站等均可，但**请务必保留作者链接**。
