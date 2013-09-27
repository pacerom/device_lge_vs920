# GSM stuff
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/apns-conf.xml:system/etc/apns-conf.xml \
    $(LOCAL_PATH)/config/spn-conf.xml:system/etc/spn-conf.xml

$(call inherit-product, device/lge/iprj-common/iprj.mk)

## These are different between models
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/fstab.iprj:root/fstab.iprj

## Model specific files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.iprj.rc:root/init.iprj.rc

PRODUCT_PACKAGES += \
    Stk

PRODUCT_NAME := full_vs920
PRODUCT_DEVICE := vs920
PRODUCT_MODEL := VS920 4G

# Kernel inline build
TARGET_KERNEL_CONFIG := cyanogenmod_vs920_defconfig
TARGET_VARIANT_CONFIG := cyanogenmod_vs920_defconfig
TARGET_SELINUX_CONFIG := cyanogenmod_vs920_defconfig

$(call inherit-product-if-exists, vendor/lge/vs920/vs920-vendor.mk)
