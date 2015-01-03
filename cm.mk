# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Release name
PRODUCT_RELEASE_NAME := GalaxyGrandQuattro

# Inherit device configuration
$(call inherit-product, device/samsung/delos3geur/delos3geur.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := delos3geur
PRODUCT_NAME := cm_delos3geur
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I8552
PRODUCT_MANUFACTURER := samsung

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
