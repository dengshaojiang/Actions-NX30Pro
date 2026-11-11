#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default


rm -rf feeds/packages/lang/golang
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/small/luci-app-mosdns
rm -rf feeds/small/mosdns
rm -rf feeds/kenzo/luci-app-adguardhome
rm -rf feeds/kenzo/adguardhome
rm -rf feeds/small/v2ray-geodata
rm -rf feeds/luci/applications/luci-app-openclash
# 删除依赖 firewall4/nft 的包（与 OpenWrt 21.02 不兼容，且未被 .config 启用），
# 否则老版 Kconfig 解析递归依赖会段错误导致 make defconfig 失败
rm -rf feeds/small/luci-app-passwall
rm -rf feeds/small/luci-app-passwall2
rm -rf feeds/small/luci-app-homeproxy
rm -rf feeds/small/luci-app-fchomo
rm -rf feeds/small/clashoo
rm -rf feeds/small/momo
rm -rf feeds/small/nikki
rm -rf feeds/small/dae
rm -rf feeds/small/daed
rm -rf feeds/small/dns2socks-rust
rm -rf feeds/kenzo/quickfile
cp -R feeds/kenzo/luci-app-openclash feeds/luci/applications/
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/sbwml/packages_lang_golang -b 20.x feeds/packages/lang/golang
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
