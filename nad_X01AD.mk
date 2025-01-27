#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from X01AD device
$(call inherit-product, device/asus/X01AD/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Device identifiers.
PRODUCT_NAME := nad_X01AD
PRODUCT_DEVICE := X01AD
PRODUCT_MANUFACTURER := asus
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS Max M2 

PRODUCT_GMS_CLIENTID_BASE := android-asus

# Nusantara additions
TARGET_BOOT_ANIMATION_RES := 720
USE_PIXEL_CHARGING := true
TARGET_SUPPORT_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

DEVICE_MAINTAINER := Wayne

BUILD_FINGERPRINT := "google/redfin/redfin:12/SP2A.220405.003/8210211:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 12 SP2A.220405.003 8210211 release-keys"
