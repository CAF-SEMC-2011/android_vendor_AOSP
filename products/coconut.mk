# Inherit AOSP device configuration for coconut
$(call inherit-product-if-exists, device/semc/coconut/full_coconut.mk)

# Inherit common device configuration for AOSP
$(call inherit-product, vendor/AOSP/common_AOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := AOSP_coconut
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := coconut
PRODUCT_MODEL := Live With Walkman
PRODUCT_MANUFACTURER := SEMC

TARGET_SCREEN_WIDTH := 320
TARGET_SCREEN_HEIGHT := 480

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="WT19i" BUILD_FINGERPRINT="SEMC/WT19i_1254-2184/Wt19i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="WT19i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

PRODUCT_PACKAGES += \
    Mms \
