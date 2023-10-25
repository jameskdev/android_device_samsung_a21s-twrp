#
# Copyright (C) 2022 TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from TWRP common configurations
$(call inherit-product, vendor/twrp/config/common.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from a21s device
$(call inherit-product, device/samsung/a21s/device.mk)

# A21s uses dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a21s
PRODUCT_NAME := twrp_a21s
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A21s
PRODUCT_MANUFACTURER := samsung
