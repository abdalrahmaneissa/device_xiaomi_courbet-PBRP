#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common PBRP stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from courbet device
$(call inherit-product, device/xiaomi/courbet/device.mk)

PRODUCT_DEVICE := courbet
PRODUCT_NAME := pb_courbet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 11 Lite
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Device Fingerprint
BUILD_FINGERPRINT := Xiaomi/courbet_global/courbet:13/TKQ1.221013.002/V14.0.4.0.TKQMIXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="courbet_global-user 13 TKQ1.221013.002 V14.0.4.0.TKQMIXM release-keys"
