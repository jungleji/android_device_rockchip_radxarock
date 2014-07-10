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
    device/rockchip/radxarock/audio_policy.conf:system/etc/audio_policy.conf \

# HAL
PRODUCT_PACKAGES += \
    hwcomposer.rk30board \
    power.rk30board \

# Audio
PRODUCT_PACKAGES += \
    audio.primary.rk30board \
    audio_policy.rk30board \
    audio.alsa_usb.rk30board \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \

PRODUCT_COPY_FILES += \
    device/rockchip/radxarock/media_profiles_default.xml:system/etc/media_profiles_default.xml \
    device/rockchip/radxarock/media_codecs.xml:system/etc/media_codecs.xml \

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_radxarock
PRODUCT_DEVICE := radxarock
PRODUCT_CHARACTERISTICS := tablet
