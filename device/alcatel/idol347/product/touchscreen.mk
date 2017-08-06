# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Touch firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ft_fw.bin:system/etc/firmware/ft_fw.bin
