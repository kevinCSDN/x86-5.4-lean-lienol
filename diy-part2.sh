#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168.1.1/192.168.6.222/g' package/base-files/files/bin/config_generate
#sed -i 's/OpenWrt/HP GEN8/g' package/base-files/files/bin/config_generate
# git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
# git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash
# git clone -b master https://github.com/tindy2013/openwrt-subconverter.git package/openwrt-subconverter
# git clone -b master https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
# git clone -b master https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
# git clone https://github.com/sbwml/luci-app-alist package/alist
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-netgear
#rm -rf feeds/luci/applications/luci-app-upnp
rm -rf feeds/luci/applications/luci-app-wrtbwmon
rm -rf luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
pushd feeds/packages/lang
rm -rf golang && svn co https://github.com/openwrt/packages/branches/openwrt-23.05/lang/golang
popd
