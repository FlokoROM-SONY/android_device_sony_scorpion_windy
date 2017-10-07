# Platform path
PLATFORM_COMMON_PATH := device/sony/shinano-common

# Release name
PRODUCT_RELEASE_NAME := scorpion_windy

# Inherit AICP common tablet stuff.
$(call inherit-product, vendor/aicp/config/common_full_tablet_wifionly.mk)

# Inherit AOSP scorpion device parts
$(call inherit-product, device/sony/scorpion_windy/full_scorpion_windy.mk)

PRODUCT_DEVICE := scorpion_windy
PRODUCT_NAME := aicp_scorpion_windy
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia Z3 Tablet Compact (Wi-Fi)
PRODUCT_MANUFACTURER := Sony

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="koron (koron393)"

# Resolution
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

# Boot animation
-include vendor/aicp/configs/bootanimation.mk
