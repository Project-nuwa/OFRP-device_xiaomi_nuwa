#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# 关于橙狐变量详见 OrangeFox_10/fox_10.0/vendor/recovery/orangefox_build_vars.txt

export LC_ALL="C"
export ALLOW_MISSING_DEPENDENCIES=true

echo -e "\x1b[96mcezanne: 开始添加OrangeFox Vars...\x1b[m"
## 构建信息
# 设置显示在关于页面里的维护人员名称
export OF_MAINTAINER=Adontoo
# 设置版本号为日期
export FOX_VERSION=$(date +%y.%m.%d)

## 添加功能
# 使用完整版ps命令
export FOX_REPLACE_BUSYBOX_PS=1
# 使用完整版getprop命令
export FOX_REPLACE_TOOLBOX_GETPROP=1
# 支持tar命令
export FOX_USE_TAR_BINARY=1
# 支持sed命令
export FOX_USE_SED_BINARY=1
# 使用bash代替sh和ash
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
# 使用完整版grep命令
export FOX_USE_GREP_BINARY=1
# 支持lzma, xz命令
export FOX_USE_XZ_UTILS=1
# 使用橙狐编译的NANO编辑器
export FOX_USE_NANO_EDITOR=1

## 界面显示设定
# 设置屏幕高度，状态栏高度，状态栏左右边距
# 由于橙狐默认屏幕比例是16：9,所以应设置屏幕高度为屏幕比例换算成n：9之后，n*120
export OF_SCREEN_H=2400
export OF_STATUS_H=90
export OF_STATUS_INDENT_LEFT=90
export OF_STATUS_INDENT_RIGHT=90
# 添加黑色状态栏（隐藏刘海）选项
# export OF_HIDE_NOTCH=1
# 由于有刘海遮挡，设置时钟位置为只能显示在左侧或右侧
# export OF_CLOCK_POS=1
# 禁止禁用导航栏
export OF_ALLOW_DISABLE_NAVBAR=0

## 使刷机包兼容Xiaomi 13Pro
export TARGET_DEVICE_ALT="nuwa"

echo -e "\x1b[96mcezanne: 当你看到这个消息的时候，所有的OrangeFox Var已经添加完毕！\x1b[m"