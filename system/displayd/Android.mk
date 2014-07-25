BUILD_DISPLAYD := false
ifneq ($(TARGET_SIMULATOR),true)
    BUILD_DISPLAYD := true
endif

ifeq ($(BUILD_DISPLAYD),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=                       \
                  main.cpp              \
                  DisplayManager.cpp	\
                  CommandListener.cpp	\
                  NetlinkManager.cpp    \
                  NetlinkHandler.cpp    \
                  DisplaydCommand.cpp   \
                  OtgManager.cpp        \
                  ScreenScaleManager.cpp\
                  Hdcp.cpp


LOCAL_MODULE:= displayd
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(KERNEL_HEADERS) \
                    external/openssl/include

LOCAL_SHARED_LIBRARIES := libsysutils libcutils libnetutils libcrypto


include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES:=	\
                  ddc.c \

LOCAL_MODULE:= ddc
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(KERNEL_HEADERS)

LOCAL_CFLAGS :=

LOCAL_SHARED_LIBRARIES := libcutils

include $(BUILD_EXECUTABLE)

endif
