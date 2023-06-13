#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X00TD device
$(call inherit-product, device/asus/X00TD/device.mk)

PRODUCT_DEVICE := X00TD
PRODUCT_NAME := omni_X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X00TD
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus-tpin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_X00TD-user 13 TQ2A.230505.002 eng.wo1966.20230611.235733 release-keys"

BUILD_FINGERPRINT := asus/lineage_X00TD/X00TD:13/TQ2A.230505.002/wo196606112354:user/release-keys
