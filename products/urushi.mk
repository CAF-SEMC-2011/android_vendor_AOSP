# Inherit AOSP device configuration for urushi
$(call inherit-product-if-exists, device/semc/urushi/full_urushi.mk)

# Inherit common device configuration for AOSP 
$(call inherit-product, vendor/AOSP/common_AOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := AOSP_urushi
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := urushi
PRODUCT_MODEL := Xperia Ray
PRODUCT_MANUFACTURER := SEMC

TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MT11i BUILD_FINGERPRINT="SEMC/MT11i_1254-2184/MT11i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="MT11i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

PRODUCT_PACKAGES += \
    Mms \
