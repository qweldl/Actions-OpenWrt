#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

#git reset --hard 0e72b739ca4dd6ee19ae05e9d4a0ac4db5546f65

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source

git clone https://github.com/fw876/helloworld.git package/helloworld
git -C package/helloworld reset --hard b7451f4dc495d74fe5dc5a4597d659f9515dd049

git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
git clone https://github.com/AdguardTeam/AdGuardHome package/adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/appadguardhome
git clone https://github.com/sirpdboy/luci-app-eqosplus package/eqosplus
git clone https://github.com/gngpp/xunlei package/xunlei
git clone https://github.com/riverscn/openwrt-iptvhelper.git package/iptvhelper

#git clone https://github.com/lisaac/luci-app-dockerman package/dockerman
#git clone https://github.com/kenzok8/small-package package/kenzok8

#https://github.com/openwrt/luci/tree/master/applications/luci-app-acl