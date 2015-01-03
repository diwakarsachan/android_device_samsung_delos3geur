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

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/samsung/delos3geur

DEVICE_PACKAGE_OVERLAYS += device/samsung/delos3geur/overlay

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml 

PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf 

PRODUCT_PACKAGES += \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio.usb.default \
    audio_policy.msm7x27a \
    libaudioutils

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    libqdMetaData \
    memtrack.msm7x27a \
    hwcomposer.msm7x27a

# Wal
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

# Keys
PRODUCT_PACKAGES += \
    AVRCP.kl \
    vee7_keypad \
    7k_handset.kl \
    touch_dev.kl

# FM Radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    gps.default \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    libloc_api-rpc-qc

PRODUCT_PACKAGES += \
    gps.msm7x27a


# light hal
PRODUCT_PACKAGES += \
    lights.msm7x27a

# Misc
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libcnefeatureconfig \
    libnl_2 \
    lights.msm7x27a \
    SamsungServiceMode 

# Omx
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libdashplayer \
    libOmxVdec \
    libOmxVenc \
    qcmediaplayer

# stagefright cmdline tools
PRODUCT_PACKAGES += \
    stagefright \
    record \
    recordvideo \
    audioloop \
    stream \
    sf2 \
    codec \
    muxer

# Camera Hal
# PRODUCT_PACKAGES += \
#    camera.msm7x27a

# Power Hal

PRODUCT_PACKAGES += \
    power.msm7x27a

# Enable Torch
PRODUCT_PACKAGES += \
  Torch \
  PicoTts \
  CMS \
  MemoryClean_Socket \
  CMBugReport \
  RootExplorer \
  Link2SDV \
  3DWallpaper 

#Test Add
PRODUCT_PACKAGES += \
  AtCmdFwd \
  bccmd

# SELinux packages
PRODUCT_PACKAGES += \
    auditd \
    sepolicy \
    file_contexts \
    seapp_contexts \
    property_contexts \
    mac_permissions.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/delos3geur/ramdisk,root)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/recovery/sbin/rmt_storage_recovery:recovery/root/sbin/rmt_storage_recovery \
    $(LOCAL_PATH)/rootdir/recovery/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

## Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/delos3geur/prebuilt/system,system)

## Enable USB mass storage (and adb) at boot.
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    persist.sys.usb.config=mtp,adb \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    ro.allow.mock.location=0

## QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

## RIL Properties
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ro.telephony.ril.v3=datacall,icccardstatus,facilitylock \
    ro.telephony.call_ring.multiple=false

## RIl Subscripton
PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=NV,RUIM \
    ro.telephony.call_ring.delay=3000 \
    ro.telephony.ril.v3=skippinpukcount,qcomdsds \
    persist.multisim.config=dsds \
    persist.radio.multisim.config=dsds \
    ro.multi.rild=true 

## RIL Mor e
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=3 \
    ro.telephony.default_cdma_sub=0 \
    ro.cdma.factory=china \
    ro.cdma.subscribe_on_ruim_ready=true \
    telephony.lteOnCdmaDevice=0 \
    ro.telephony.call_ring.multiple=false

## Netmgr
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.use_data_netmgrd=true \
    persist.data_netmgrd_nint=16 \
    persist.radio.apm_sim_not_pwdn=1 

## Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m \
    persist.sys.dalvik.vm.lib=libdvm.so \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

## Graphics
#PRODUCT_PROPERTY_OVERRIDES += \
#    persist.sys.force_highendgfx=1
#    dalvik.vm.checkjni=0 \
#    dalvik.vm.dexopt-data-only=1 \
#    dalvik.vm.jit.codecachesize=1

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    debug.hwc.dynThreshold=1.9 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.max.fling_velocity=4000 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=240

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.thermal.monitor=1 \
    ro.vold.umsdirtyratio=50 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true \
    lpa.decode=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.analogpath.supported=false \
    ro.fm.transmitter=false \
    ro.fm.mulinst.recording.support=false

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60

#From Aurora
PRODUCT_PROPERTY_OVERRIDES += \
       dalvik.vm.heapstartsize=8m \
       dalvik.vm.heapgrowthlimit=36m \
       dalvik.vm.heapsize=128m

#Additional
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.adb.qemud=1 

#Additional
PRODUCT_PROPERTY_OVERRIDES += \
	ro.setupwizard.enterprise_mode=1 \
	ro.build.selinux=1 \
	persist.sys.dalvik.multithread=false \
	persist.sys.dun.override=0 \
	ro.error.receiver.system.apps=org.cyanogenmod.bugreport \
	persist.sys.root_access=1 \
	persist.sys.recovery_update=false \
	headset.hook.delay=500 \
	ro.bluetooth.remote.autoconnect=true \
	ro.bluetooth.request.master=true \
	ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
	ro.qualcomm.bluetooth.dun=true \
	ro.qualcomm.bluetooth.ftp=true \
	persist.webview.provider=classic \
	ro.carrier=unknown 

$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, vendor/samsung/delos3geur/vendor.mk)

## Other
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0


