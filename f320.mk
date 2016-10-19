#
# Copyright (C) 2016 The Paranoid Android Project
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

LOCAL_PATH := device/lge/f320

$(call inherit-product, device/lge/g2-common/common.mk)
$(call inherit-product, vendor/lge/f320/f320-vendor.mk)

## Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# NFC
$(call inherit-product, device/lge/g2-common/nfc.mk)

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensor_def_f320.conf:system/etc/sensor_def_variable.conf

# Copy product specific init script to mount SD card
PRODUCT_COPY_FILES += $(LOCAL_PATH)/init.qcom.sdcard.rc:root/init.qcom.sdcard.rc	
