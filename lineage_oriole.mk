#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/oriole/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := lineage_oriole

# Addons
TARGET_HAS_UDFPS := true

# Gms 
WITH_GMS := true

# Ship Google Camera 
TARGET_PREBUILT_GOOGLE_CAMERA := true

# Set Pixel launcher as default launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 14 AP1A.240405.002 11480754 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/AP1A.240405.002/11480754:user/release-keys

$(call inherit-product-if-exists, vendor/google/oriole/oriole-vendor.mk)
