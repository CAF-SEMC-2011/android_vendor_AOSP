# Inherit AOSP device configuration for smultron
$(call inherit-product-if-exists, device/semc/smultron/full_smultron.mk)

# Inherit common device configuration for AOSP
$(call inherit-product, vendor/AOSP/common_AOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := AOSP_smultron
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := smultron
PRODUCT_MODEL := Xperia Mini
PRODUCT_MANUFACTURER := SEMC

TARGET_SCREEN_WIDTH := 320
TARGET_SCREEN_HEIGHT := 480

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST15i BUILD_FINGERPRINT="SEMC/ST15i_1254-2184/ST15i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="ST15i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

PRODUCT_PACKAGES += \
    Mms \
