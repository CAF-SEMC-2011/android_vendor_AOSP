USER := 1.0

PRODUCT_PACKAGES += \
    Superuser \
    su 
	
PRODUCT_COPY_FILES += \
	vendor/AOSP/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml
