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

BOARD_HAVE_RADIO := false

# Inherit the scorpion-common definitions
$(call inherit-product, device/sony/scorpion_windy/scorpion-common.mk)

# Device Init
PRODUCT_PACKAGES += \
    init.recovery.scorpion_windy \
    init.scorpion_windy \
    ueventd.scorpion_windy

# Lights
PRODUCT_PACKAGES += \
    lights.scorpion_windy

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.scorpion_windy

# Hardware
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Include non-opensource parts
$(call inherit-product, vendor/sony/scorpion_windy/scorpion_windy-vendor.mk)
