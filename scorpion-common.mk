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
$(call inherit-product, device/sony/shinano-common/shinano_omni.mk)

DEVICE_PACKAGE_OVERLAYS += device/sony/scorpion_windy/overlay-common

# Device is a Tablet
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG := normal large
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
