## Specify phone tech before including full_phone
$(call inherit-product, vendor/mk/config/cdma.mk)

TARGET_KERNEL_CONFIG := gee_defconfig

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)
$(call inherit-product, vendor/mk/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/gee/mk_gee.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gee
PRODUCT_NAME := mk_gee
PRODUCT_BRAND := LGE
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.4.2/KOT49H/937116:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.4.2 KVT49L 937116 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
