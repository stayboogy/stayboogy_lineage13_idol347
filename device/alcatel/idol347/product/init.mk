# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.qcom.power.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc \
    fstab.qcom \
    init.qcom.fm.sh \
    init.dualsim.sh \
    init.qcom.zram.sh \
    init.qcom.factory.rc

ifeq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    init.qcom.ssr.rc
endif
