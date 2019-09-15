# Platform path
PLATFORM_COMMON_PATH := device/sony/shinano-common

# Release name
PRODUCT_RELEASE_NAME := scorpion_windy

# Inherit AOSP common Phone stuff.
$(call inherit-product, build/make/target/product/mainline.mk)

$(call inherit-product, device/sony/scorpion_windy/full_scorpion_windy.mk)

# build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="SGP611-user 6.0.1 23.5.A.1.291 713254892 release-keys"

BUILD_FINGERPRINT := \
    "Sony/SGP611/SGP611:6.0.1/23.5.A.1.291/713254892:user/release-keys"

PRODUCT_NAME := aosp_scorpion_windy
PRODUCT_DEVICE := scorpion_windy

# Resolution
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920
