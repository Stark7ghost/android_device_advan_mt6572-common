# config.mk
#
# Product-specific compile-time definitions.
#

include device/advan/mt6572-common/configs/ProjectConfig.mk

# inherit from the proprietary version if exist
-include vendor/advan/mt6572-common/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := mt6572
TARGET_BOOTLOADER_BOARD_NAME := mt6572

TARGET_NO_BOOTLOADER := true
TARGET_ARCH := arm

TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_SPECIFIC_HEADER_PATH += device/advan/mt6572-common/include

TARGET_USERIMAGES_USE_EXT4:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_CUSTOM_BOOTIMG_MK := device/advan/mt6572-common/prebuilt_boot.mk

# MTK, Infinity, 20090720, Add WiFi {
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_P2P_SUPPLICANT_DRIVER := NL80211
HAVE_CUSTOM_WIFI_DRIVER_2 := true
HAVE_INTERNAL_WPA_SUPPLICANT_CONF := true
HAVE_CUSTOM_WIFI_HAL := mediatek
WPA_SUPPLICANT_VERSION := VER_0_6_X
P2P_SUPPLICANT_VERSION := VER_0_8_X
# MTK, Infinity, 20090720, Add WiFi }

WIFI_DRIVER_MODULE_PATH := /system/lib/modules/
WIFI_DRIVER_MODULE_NAME := wlan

HAVE_HTC_AUDIO_DRIVER := true

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/advan/mt6572-common/configs/egl.cfg

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := false

BOARD_UMS_LUNFILE := /sys/devices/platform/mt_usb/gadget/lun%d/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
CWM_EMMC_BOOT_DEVICE_SIZE := 0x00600000
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x00600000
CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
CWM_EMMC_UBOOT_DEVICE_SIZE := 0x00060000
