#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common Rising OS Stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweet_eea-user 13 RKQ1.210614.002 V14.0.5.0.TKFEUXM release-keys"

BUILD_FINGERPRINT := Redmi/sweet_eea/sweet:13/RKQ1.210614.002/V14.0.5.0.TKFEUXM:user/release-keys

# Rising OS stuff
RISING_CHIPSET := Snapdragon-732G
RISING_MAINTAINER := Ajit
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true