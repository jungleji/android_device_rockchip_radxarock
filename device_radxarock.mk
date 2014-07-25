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
    device/rockchip/radxarock/rkxx-remotectl.kl:system/usr/keylayout/rkxx-remotectl.kl \
    device/rockchip/radxarock/rk29-keypad.kl:system/usr/keylayout/rk29-keypad.kl \

# HAL
PRODUCT_PACKAGES += \
    hwcomposer.rk30board \
    power.rk3188 \

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    alsa.default \
    acoustics.default \

# Media proprietary libraries
PRODUCT_PACKAGES += \
    libvpu \
    librk_on2 \
    libjesancache \
    librkwmapro \
    libapedec \
    libffmpegvpu \
    libRKBluray \
    libffmpeg_on2 \
    libffmpeg \
    libhevcdec \
    libOMX_Core \
    libomxvpu_dec \
    libomxvpu_enc \
    libRkOMX_Resourcemanager \
    libstagefright_hdcp \
    libstagefrighthw \
    libstagefright \
    libjpeghwenc \
    libjpeghwdec \
    librkswscale \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/asound_itv.conf:system/etc/asound.conf

$(call inherit-product-if-exists, $(LOCAL_PATH)/system/alsa-lib/copy.mk)
$(call inherit-product-if-exists, $(LOCAL_PATH)/system/alsa-utils/copy.mk)

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \

# Display
PRODUCT_PACKAGES += \
    displayd \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \

PRODUCT_COPY_FILES += \
    device/rockchip/radxarock/media_profiles_default.xml:system/etc/media_profiles_default.xml \
    device/rockchip/radxarock/media_codecs.xml:system/etc/media_codecs.xml \
    device/rockchip/radxarock/performance_info.xml:system/etc/performance_info.xml \
    device/rockchip/radxarock/packages-compat.xml:system/etc/packages-compat.xml \
    device/rockchip/radxarock/packages-composer.xml:system/etc/packages-composer.xml \

PRODUCT_COPY_FILES += \
    device/rockchip/radxarock/bluetooth/realtek/bt/firmware/rtl8723au/rtk8723a:system/etc/firmware/rtk8723a \
    device/rockchip/radxarock/bluetooth/realtek/bt/firmware/rtl8723au/rtk8723_bt_config:system/etc/firmware/rtk8723_bt_config \

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_radxarock
PRODUCT_DEVICE := radxarock
PRODUCT_CHARACTERISTICS := tablet
