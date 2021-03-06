#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-m7spr

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/cdma.mk)

# Inherit model specific configuration.
$(call inherit-product, vendor/vanir/products/vanir_m7-common.mk)

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7spr/full_m7spr.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_m7spr
PRODUCT_DEVICE := m7spr
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7wls BUILD_ID=KTU84M BUILD_FINGERPRINT="htc/m7wls/m7wls:4.4.3/KTU84M/303687.4:user/release-keys" PRIVATE_BUILD_DESC="4.06.651.4 CL303687 release-keys"
