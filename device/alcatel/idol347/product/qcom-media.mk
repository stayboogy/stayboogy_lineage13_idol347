# Media
PRODUCT_PACKAGES += \
    libdashplayer \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdecHevc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libqcmediaplayer \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_msm8916.xml:system/etc/media_codecs.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=1 \
    vidc.enc.narrow.searchrange=1
