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
PRODUCT_DEVICE := oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := lineage_oriole
PRODUCT_MANUFACTURER := Google

# GMS
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true

# Sushi Boot Animation
SUSHI_BOOTANIMATION  := 1080

# Rice
RICE_MAINTAINER := minaripenguin
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_HAS_UDFPS := true
TARGET_USE_PIXEL_FINGERPRINT := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TQ1A.230205.002 9471150 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TQ1A.230205.002/9471150:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
