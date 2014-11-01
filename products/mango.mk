# Inherit AOSP device configuration for mango
$(call inherit-product-if-exists, device/semc/mango/full_mango.mk)

# Inherit common device configuration for AOSP
$(call inherit-product, vendor/PolishBlood/common_AOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := AOSP_mango
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := mango
PRODUCT_MODEL := Xperia Mini Pro
PRODUCT_MANUFACTURER := SEMC

TARGET_SCREEN_WIDTH := 320
TARGET_SCREEN_HEIGHT := 480

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SK17i BUILD_FINGERPRINT="SEMC/SK17i_1254-2184/SK17i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="SK17i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

PRODUCT_PACKAGES += \
    Mms \
