#
# Copyright (C) 2017 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from sakura device
$(call inherit-product, device/xiaomi/sakura/device.mk)

#Halium stuffs
$(call inherit-product, $(SRC_TARGET_DIR)/product/halium.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sakura
PRODUCT_NAME := lineage_sakura
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 6 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

BUILD_FINGERPRINT := "xiaomi/sakura_india/sakura_india:9/PKQ1.180917.001/9.4.18:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sakura_india-user 9 PKQ1.180917.001 9.4.18 release-keys" \
    PRODUCT_NAME="sakura_india" \
    TARGET_DEVICE="sakura_india"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
