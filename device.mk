#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2024 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/htc/pme_test/pme_test-vendor.mk)

# Overlays
#DEVICE_PACKAGE_OVERLAYS += \
#    $(LOCAL_PATH)/overlay \
#    $(LOCAL_PATH)/overlay-lineage

#PRODUCT_ENFORCE_RRO_TARGETS := \
#    framework-res

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Common init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    ueventd.qcom.rc

# Blobs
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
	android.hardware.bluetooth@1.0-service \
	android.hardware.biometrics.fingerprint@2.1-service \
	android.hardware.camera.provider@2.4-service \
	android.hardware.configstore@1.0-service \
	android.hardware.drm@1.0-service \
	android.hardware.gatekeeper@1.0-service \
	android.hardware.graphics.allocator@2.0-service \
	android.hardware.graphics.composer@2.1-service \
	android.hardware.health@1.0-service \
	android.hardware.keymaster@3.0-service \
	android.hardware.light@2.0-service \
	android.hardware.media.omx@1.0-service \
	android.hardware.memtrack@1.0-service \
	android.hardware.nfc@1.0-service \
	android.hardware.power@1.0-service \
	android.hardware.sensors@1.0-service \
	android.hardware.usb@1.0-service \
	android.hardware.vibrator@1.0-service \
	android.hardware.wifi@1.0-service \
	audio.primary.msm8996 \
	audio.r_submix.default \
	audio.usb.default \
	gralloc.msm8996 \
	hwcomposer.msm8996 \
#	lights.msm8996	\
	memtrack.msm8996 \
	libOmxAacEnc \
	libOmxAmrEnc \
	libOmxCore \
	libOmxEvrcEnc \
	libOmxQcelp13Enc \
	libOmxVdec \
	libOmxVenc \
	libalsautils \
	libc2dcolorconvert \
	libdrm \
	libdrmutils \
	libeffects \
	libgpu_tonemapper \
	libgrallocutils \
	libhwc2on1adapter \
	libhypv_intercept \
	libjson \
	libmm-omxcore \
	libqdMetaData \
	libqdutils \
	libqservice \
	libril \
	librilutils \
	librmnetctl \
	libsdmcore \
	libsdmutils \
	libsensorndkbridge \
	libstagefrighthw \
	libtinycompress_vendor \
	libtinyxml \
	libdrmclearkeyplugin \
	libkeystore-engine-wifi-hidl \
	libkeystore-wifi-hidl \
	libqservice \
	libwifi-hal \
	vendor.display.config@1.0_vendor \
	vendor.display.config@1.0-service \
	vendor.qti.hardware.camera.device@1.0_vendor \
	vendor.qti.hardware.camera.device@1.0

# Impls
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
	android.hardware.audio.effect@2.0-impl \
	android.hardware.bluetooth@1.0-impl \
	android.hardware.biometrics.fingerprint@2.1-impl \
	android.hardware.broadcastradio@1.0-impl \
	android.hardware.camera.provider@2.4-impl \
	android.hardware.configstore@1.0-impl \
	android.hardware.drm@1.0-impl \
	android.hardware.gatekeeper@1.0-impl \
	android.hardware.graphics.allocator@2.0-impl \
	android.hardware.graphics.composer@2.1-impl \
	android.hardware.graphics.mapper@2.0-impl \
	android.hardware.health@1.0-impl \
	android.hardware.keymaster@3.0-impl \
	android.hardware.renderscript@1.0-imp \
	android.hardware.light@2.0-impl \
	android.hardware.media.omx@1.0-impl \
	android.hardware.memtrack@1.0-impl \
	android.hardware.nfc@1.0-impl \
	android.hardware.power@1.0-impl \
	android.hardware.sensors@1.0-impl \
	android.hardware.soundtrigger@2.0-impl \
	android.hardware.usb@1.0-impl \
	android.hardware.vibrator@1.0-impl \
	android.hardware.wifi@1.0-impl
	
	
# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

# LiveDisplay native
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@1.0-service-sdm

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

#PRODUCT_BOOT_JARS += \
#    telephony-ext
