$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/rockchip/radxarock/radxarock-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/rockchip/radxarock/overlay

LOCAL_PATH := device/rockchip/radxarock

KERNEL_PATH := kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(KERNEL_PATH)/arch/arm/boot/Image
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Recovery
PRODUCT_PACKAGES += \
    librecovery_ui_radxarock \

PRODUCT_COPY_FILES += \
    device/rockchip/radxarock/init.rk30board.rc:root/init.rk30board.rc \
    device/rockchip/radxarock/init.rk30board.usb.rc:root/init.rk30board.usb.rc \
    device/rockchip/radxarock/init.rk30board.bootmode.emmc.rc:root/init.rk30board.bootmode.emmc.rc \
    device/rockchip/radxarock/init.rk30board.bootmode.unknown.rc:root/init.rk30board.bootmode.unknown.rc \
    device/rockchip/radxarock/init.connectivity.rc:root/init.connectivity.rc \
    device/rockchip/radxarock/ueventd.rk30board.rc:root/ueventd.rk30board.rc \
    device/rockchip/radxarock/fstab.rk30board.bootmode.emmc:root/fstab.rk30board.bootmode.emmc \
    device/rockchip/radxarock/fstab.rk30board.bootmode.unknown:root/fstab.rk30board.bootmode.unknown \

# Filesystem management tools
PRODUCT_PACKAGES += \
    mke2fs \
    e2fsck \
    tune2fs \
    resize2fs \
    mkdosfs \
    genext2fs \
    mkyaffs2image \

PRODUCT_COPY_FILES += \
    device/rockchip/radxarock/install-recovery.sh:system/bin/install-recovery.sh \

# HAL
PRODUCT_PACKAGES += \
    hwcomposer.rk30board \
    power.rk30board \

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_radxarock
PRODUCT_DEVICE := radxarock
