#!/bin/bash

echo "$1 $2 $3"
TARGET_PRODUCT=$1
PRODUCT_OUT=$2
TARGET_BOARD_PLATFORM=$3

############################################################################################
#rk recovery contents
############################################################################################
cp -f vendor/rockchip/radxarock/proprietary/bin/sdtool $PRODUCT_OUT/recovery/root/sbin/
cp -f vendor/rockchip/radxarock/proprietary/bin/busybox $PRODUCT_OUT/recovery/root/sbin/
