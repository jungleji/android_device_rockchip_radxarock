TARGET_ALSA_CONF_DIR := system/usr/share/alsa
LOCAL_ALSA_CONF_DIR  := external/alsa-lib/src/conf

PRODUCT_COPY_FILES += \
    $(LOCAL_ALSA_CONF_DIR)/alsa.conf:$(TARGET_ALSA_CONF_DIR)/alsa.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/dsnoop.conf:$(TARGET_ALSA_CONF_DIR)/pcm/dsnoop.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/modem.conf:$(TARGET_ALSA_CONF_DIR)/pcm/modem.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/dpl.conf:$(TARGET_ALSA_CONF_DIR)/pcm/dpl.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/default.conf:$(TARGET_ALSA_CONF_DIR)/pcm/default.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/surround51.conf:$(TARGET_ALSA_CONF_DIR)/pcm/surround51.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/surround41.conf:$(TARGET_ALSA_CONF_DIR)/pcm/surround41.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/surround50.conf:$(TARGET_ALSA_CONF_DIR)/pcm/surround50.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/dmix.conf:$(TARGET_ALSA_CONF_DIR)/pcm/dmix.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/center_lfe.conf:$(TARGET_ALSA_CONF_DIR)/pcm/center_lfe.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/surround40.conf:$(TARGET_ALSA_CONF_DIR)/pcm/surround40.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/side.conf:$(TARGET_ALSA_CONF_DIR)/pcm/side.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/iec958.conf:$(TARGET_ALSA_CONF_DIR)/pcm/iec958.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/rear.conf:$(TARGET_ALSA_CONF_DIR)/pcm/rear.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/surround71.conf:$(TARGET_ALSA_CONF_DIR)/pcm/surround71.conf \
    $(LOCAL_ALSA_CONF_DIR)/pcm/front.conf:$(TARGET_ALSA_CONF_DIR)/pcm/front.conf \
    $(LOCAL_ALSA_CONF_DIR)/cards/aliases.conf:$(TARGET_ALSA_CONF_DIR)/cards/aliases.conf
