# Inherit AOSP device configuration for hallon
$(call inherit-product-if-exists, device/semc/hallon/full_hallon.mk)

# Inherit common device configuration for PolishBlood Project 
$(call inherit-product, vendor/PolishBlood/common_PolishBlood.mk)

# Add all AOSP ringtones(disable for more space on /system)
$(call inherit-product, frameworks/base/data/sounds/AllAudio.mk)

# Setup device specific product configuration.
PRODUCT_NAME := PolishBlood_hallon
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := hallon
PRODUCT_MODEL := Xperia Neo
PRODUCT_MANUFACTURER := SEMC

TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MT15i BUILD_FINGERPRINT="SEMC/MT15i_1254-2184/MT15i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="MT15i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

PRODUCT_PACKAGES += \
    Mms \    
