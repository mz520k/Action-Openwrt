#!/bin/bash

echo "Apply custom.sh"

source ../version

rm -rf package/lean/default-settings/files/zzz-default-settings
wget https://raw.githubusercontent.com/coolsnowwolf/lede/99222f49fd9f63eef575ac34f251280e6e97f3b3/package/lean/default-settings/files/zzz-default-settings -O package/lean/default-settings/files/zzz-default-settings


sed -i '92d' package/system/opkg/Makefile
sed -i  "s/R20\(.[0-9].[0-9]\{1,2\}\)/R21.$version/g" package/lean/default-settings/files/zzz-default-settings
