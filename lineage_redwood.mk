#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from redwood device
$(call inherit-product, device/xiaomi/redwood/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Rising Flags 
RISING_CHIPSET := Snapdragon 778G 5G
RISING_MAINTAINER := XscarGOD
RISING_PACKAGE_TYPE := "VANILLA AOSP"
TARGET_ENABLE_BLUR := true

#GMS Flags
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := true

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := redwood
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22101320C
PRODUCT_NAME := lineage_redwood

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := redwood
PRODUCT_SYSTEM_DEVICE := redwood

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redwood-user 12 RKQ1.211001.001 V14.0.1.0.TMSMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/redwood/redwood:12/RKQ1.211001.001/V14.0.1.0.TMSMIXM:user/release-keys
