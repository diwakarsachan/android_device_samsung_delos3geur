# Copyright (C) 2013 The CyanogenMod Project
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
#
# BoardConfig.mk
#

TARGET_SPECIFIC_HEADER_PATH := device/samsung/delos3geur/include

# cflags
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_ABI_HACK -DUSE_MDP3
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
# Try to use ASHMEM if possible (when non-MDP composition is used)
TARGET_GRALLOC_USES_ASHMEM := true

# Arch related defines and optimizations
TARGET_ARCH := arm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOOTLOADER_BOARD_NAME := msm8625
TARGET_CPU_SMP := true

TARGET_CORTEX_CACHE_LINE_32 := true
#TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

TARGET_BOARD_PLATFORM_GPU := qcom-adreno203
BOARD_USES_ADRENO_203 := true
TARGET_KERNEL_SOURCE := device/samsung/delos3geur-kernel

TARGET_KERNEL_CONFIG := cyanogen_delos3geur_defconfig
BOARD_KERNEL_BASE := 0x00200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_USES_UNCOMPRESSED_KERNEL := false

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M androidboot.selinux=permissive
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_EGL_CFG := device/samsung/delos3geur/prebuilt/system/lib/egl/egl.cfg
## Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 12288000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12288000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1228800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5573804032
BOARD_CACHEIMAGE_PARTITION_SIZE := 737280000
BOARD_FLASH_BLOCK_SIZE := 131072
# FM
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_PROVIDES_LIBAUDIO := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_HAS_QACT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/delos3geur/bluetooth
# Dalvik
TARGET_ARCH_LOWMEM := true

# Display
BOARD_USES_QCOM_HARDWARE := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
#TARGET_USES_QCOM_BSP := true
#TARGET_DISPLAY_USE_RETIRE_FENCE := true
BOARD_USE_MHEAP_SCREENSHOT := true
HWUI_COMPILE_FOR_PERF := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Hardware
BOARD_HARDWARE_CLASS := device/samsung/delos3geur/cmhw

# BIONIC
#TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Add QC Video Enhancements flag
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# SEPOLICY
BOARD_SEPOLICY_DIRS := \
       device/samsung/delos3geur/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       file_contexts

# EGL
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_CFG := device/samsung/delos3geur/prebuilt/system/lib/egl/egl.cfg

# Media
TARGET_QCOM_MEDIA_VARIANT := caf
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
TARGET_QCOM_LEGACY_MMPARSER := true

# Storage / Sharing
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# GPS
QCOM_GPS_PATH := hardware/qcom/gps
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

TARGET_PROVIDES_LIBLIGHT := true

# Camera
USE_CAMERA_STUB := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_WITH_GENLOCK -DNEEDS_VECTORIMPL_SYMBOLS
USE_DEVICE_SPECIFIC_CAMERA := true

# Webkit
ENABLE_WEBGL := true
#PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_FORCE_CPU_UPLOAD := true

DISABLE_DEXPREOPT := true

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/delos3geur/ril/

## Wi-Fi
BOARD_WLAN_DEVICE := ath6kl
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_ath6kl
WIFI_EXT_MODULE_NAME := "cfg80211"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_DRIVER_MODULE_AP_ARG := "suspend_mode=3 wow_mode=2 ath6kl_p2p=1 recovery_enable=1"
WIFI_DRIVER_MODULE_NAME := "ath6kl_sdio"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_ARG := "suspend_mode=3 wow_mode=2 ath6kl_p2p=1 recovery_enable=1"

#Boot
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
## Vold
BOARD_VOLD_MAX_PARTITIONS := 24

## Samsung has weird framebuffer
TARGET_NO_INITLOGO := true
## Recovery
TARGET_RECOVERY_FSTAB := device/samsung/delos3geur/ramdisk/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
RECOVERY_FSTAB_VERSION := 2

## Filesystem
BOARD_DATA_DEVICE := /dev/block/mmcblk0p24
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p21
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p22
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw

## Other Features
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_HAS_DOWNLOAD_MODE := true
#BOARD_USES_MMCUTILS := true
#BOARD_HAS_NO_MISC_PARTITION := true
BOARD_NO_SPEAKER := true

