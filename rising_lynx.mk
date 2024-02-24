#
# Copyright 2021 The Android Open-Source Project
# Copyright 2023 The RisingOS Android Project
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

TARGET_LINUX_KERNEL_VERSION := 5.10

DEVICE_USES_NO_TRUSTY := true
USE_SWIFTSHADER := true
BOARD_USES_SWIFTSHADER := true

$(call inherit-product, device/google/gs201/aosp_common.mk)
$(call inherit-product, device/google/lynx/device-lynx.mk)
$(call inherit-product, device/google/lynx/lineage_lynx.mk)

# Inherit risingOS vendor configs
$(call inherit-product, vendor/rising/config/rising.mk)

# Device Identifiers
PRODUCT_BRAND := google
PRODUCT_DEVICE := lynx
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 7a
PRODUCT_NAME := rising_lynx

# RisingOS variables
RISING_MAINTAINER := EliteDarkKaiser
RISING_CHIPSET := GS201

# Gms variables
WITH_GMS := true

# Addons
TARGET_HAS_UDFPS := true

DEVICE_MANIFEST_FILE := \
	device/google/lynx/manifest.xml
