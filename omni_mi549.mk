#
# Copyright (C) 2016 Satyabrat Sahoo
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mi549
PRODUCT_NAME := omni_mi549
PRODUCT_BRAND := Spice
PRODUCT_MODEL := Spice Mi-549
PRODUCT_MANUFACTURER := Spice

# Default Props
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.product.device=Mi-549
