#!/bin/bash

echo "Apply custom.sh"

source ../version
cp ../user/common/default-settings package/lean/default-settings/files/zzz-default-settings


sed -i '92d' package/system/opkg/Makefile
sed -i  "s/20\(.[0-9].[0-9]\{1,2\}\)/21.$version/g" package/lean/default-settings/files/zzz-default-settings
sed -i 's/DEPENDS.*/& \+luci-i18n-samba-zh-cn/g'  package/lean/autosamba/Makefile
sed -i 's/DEPENDS.*/& \+luci-i18n-mwan3-zh-cn/g'  package/lean/luci-app-syncdial/Makefile
sed -i 's/DEPENDS.*/& \+kmod-usb-core +kmod-usb-ohci +kmod-usb-uhci +kmod-usb-storage +kmod-usb-storage-extras +kmod-usb2 +kmod-scsi-core/g'  package/lean/automount/Makefile
