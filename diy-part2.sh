#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-argon-mod
rm -rf feeds/luci/applications/luci-app-argon-config
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/packages/lang/golang
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
git clone https://github.com/sbwml/luci-app-alist package/luci-app-alist
git clone -b main https://github.com/xiaorouji/openwrt-passwall package/psw
git clone https://github.com/xiaorouji/openwrt-passwall-packages package/pswcore
