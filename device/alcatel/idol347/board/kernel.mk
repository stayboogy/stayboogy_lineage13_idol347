BOARD_DTBTOOL_ARGS := -2
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

BOARD_KERNEL_BASE := 80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 00000100
BOARD_RAMDISK_OFFSET     := 01000000

ENABLE_CPUSETS := true

TARGET_KERNEL_SOURCE := kernel/alcatel/msm8916
TARGET_KERNEL_CONFIG := cyanogenmod_idol347-perf_defconfig
ifneq ($(FORCE_32_BIT),true)
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true
else
TARGET_KERNEL_ARCH := arm
endif
