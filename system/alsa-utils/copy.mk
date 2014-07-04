
#alsa-utils

TARGET_ALSAUTILS_CONF_DIR := system/usr/share/alsa/init/
ALSAUTILS_DIR := external/alsa-utils/alsactl/init/

copyfile := 00main default hda help info test

PRODUCT_COPY_FILES += $(foreach file, $(copyfile), \
    $(addprefix $(ALSAUTILS_DIR), $(file)):$(addprefix $(TARGET_ALSAUTILS_CONF_DIR), $(file)))
