## Specify phone tech before including full_phone
$(call inherit-product, vendor/carbon/config/common_cdma.mk)
# For GSM users - block cdma above, for cdma, block below
#$(call inherit-product, vendor/carbon/config/common_gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := dlx

# Inherit some common CM stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/dlx/full_dlx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dlx
PRODUCT_NAME := carbon_dlx
PRODUCT_BRAND := Verizon
PRODUCT_MODEL := HTC6435LVW
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=dlx BUILD_FINGERPRINT=verizon_wwe/dlx/dlx:4.1.1/JRO03C/147796.1:user/release-keys PRIVATE_BUILD_DESC="2.06.605.1 CL147796 release-keys"
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.dlx.$(shell date +%m%d%y).$(shell date +%H%M%S)
