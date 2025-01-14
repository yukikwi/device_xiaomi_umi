#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/umi/device.mk)

# Inherit from the Lineage configuration.
$(call inherit-product, vendor/arrow/config/common.mk)

# Set Boot Animination Resolution
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := arrow_umi
PRODUCT_DEVICE := umi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10
PRODUCT_MANUFACTURER := Xiaomi

#Gapps
ARROW_GAPPS := true
TARGET_GAPPS_ARCH := arm64
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/umi/umi:12/SKQ1.211006.001/V13.0.4.0.SJBCNXM:user/release-keys

# ArrowOS additions
DEVICE_MAINTAINER := yukikwi
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)
