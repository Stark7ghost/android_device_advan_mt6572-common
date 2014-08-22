LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_BOARD_PLATFORM),mt6572)

include $(call all-subdir-makefiles)

-include vendor/advan/mt6572-common/Android.mk

endif
