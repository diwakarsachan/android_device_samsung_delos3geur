# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800
## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyGrandQuattro

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/delos3geur/delos3geur.mk)

# Web Rendering
PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := delos3geur
PRODUCT_NAME := cm_delos3geur
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I8552
PRODUCT_MANUFACTURER := samsung

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
