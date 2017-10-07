# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit the fusion-common definitions
$(call inherit-product, device/sony/shinano-common/shinano.mk)

DEVICE_PACKAGE_OVERLAYS += device/sony/scorpion_windy/overlay-common

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    $(LOCAL_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    $(LOCAL_PATH)/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf

# Device is a Tablet
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG := normal large
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Device specific init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.device.rc:root/init.device.rc

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
