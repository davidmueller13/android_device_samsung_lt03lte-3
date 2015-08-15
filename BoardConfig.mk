# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8974
-include device/samsung/msm8974-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/lt03lte/BoardConfigVendor.mk

(get most of this from build.prop)
# Board General info
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_BOARD_PLATFORM := platform
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true

(i cant figure this one out, please pm me if you find it out)
# ril

# audio
HAVE_HTC_AUDIO_DRIVER := ?
BOARD_USES_GENERIC_AUDIO := ?
TARGET_PROVIDES_LIBAUDIO := ?

(get this information from  system/etc and /modules)
# wifi
BOARD_WPA_SUPPLICANT_DRIVER := ?
WPA_SUPPLICANT_VERSION := ?
BOARD_WLAN_DEVICE := ?
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/?"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/?"
WIFI_DRIVER_MODULE_NAME := "?"
WIFI_DRIVER_MODULE_PATH := "/lib/modules/?"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/? nvram_path=/system/etc/wifi/?"

(get this from system/etc)
# video
BOARD_EGL_CFG := device/manufacturer/devicename/files/?
TARGET_BOARD_PLATFORM_GPU := ?

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := ?

(get this from your boot.img unpacking)
# kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := devicemanufacturer/devicename/kernel

# Partitioning setup (fix this up by examining /proc/mtd on a running device)
BOARD_BOOTIMAGE_PARTITION_SIZE := ?
BOARD_RECOVERYIMAGE_PARTITION_SIZE := ?
BOARD_SYSTEMIMAGE_PARTITION_SIZE := ?
BOARD_USERDATAIMAGE_PARTITION_SIZE := ?
BOARD_FLASH_BLOCK_SIZE := ?

## PARTITION LAYOUT/INFO ##
BOARD_DATA_DEVICE := /dev/block/mtdblock?
BOARD_DATA_FILESYSTEM := ?
BOARD_DATA_FILESYSTEM_OPTIONS := rw,nosuid,nodev,noatime,nodiratime 0 0 (the permissions, replace these with your devices)
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock?
BOARD_SYSTEM_FILESYSTEM := ?
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw,noatime,nodiratime 0 0 (the permissions, replace these with your devices)
BOARD_CACHE_DEVICE := /dev/block/mtdblock?
BOARD_CACHE_FILESYSTEM := ?
BOARD_CACHE_FILESYSTEM_OPTION := rw,nosuid,nodev,noatime,nodiratime 0 0 (the permissions, replace these with your devices)
BOARD_MISC_DEVICE := /dev/block/mtdblock?
BOARD_BOOT_DEVICE := /dev/block/mtdblock?
BOARD_RECOVERY_DEVICE := /dev/block/mtdblock?
TARGET_USERIMAGES_USE_EXT4 := ?
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/vold/?

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom


TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT :=