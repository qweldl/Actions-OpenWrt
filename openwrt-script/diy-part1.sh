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
#echo 'src-git oaf https://github.com/destan19/OpenAppFilter.git' >>feeds.conf.default
#echo 'src-git xunlei https://github.com/gngpp/xunlei' >>feeds.conf.default


#helloworld
git clone https://github.com/fw876/helloworld.git package/helloworld
git -C package/helloworld reset --hard b7451f4dc495d74fe5dc5a4597d659f9515dd049

#adguardhome
git clone https://github.com/AdguardTeam/AdGuardHome package/adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome

#
##diskman
#git clone https://github.com/markvlenvision/luci-app-diskman.git package/luci-app-diskman
#
##xunlei
#git clone https://github.com/gngpp/xunlei package/luci-app-xunlei
#
##OpenAppFilter
#git clone https://github.com/destan19/OpenAppFilter.git package/luci-app-oaf
#
##iptv
#git clone https://github.com/riverscn/openwrt-iptvhelper.git package/iptvhelper
#
##dockerman
#git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman


#git clone https://github.com/kenzok8/small-package package/kenzok8