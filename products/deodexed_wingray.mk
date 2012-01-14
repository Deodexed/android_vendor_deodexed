$(call inherit-product, device/moto/wingray/full_wingray.mk)
$(call inherit-product, vendor/deodexed/products/common.mk)

PRODUCT_NAME := deodexed_wingray
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := wingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Moto
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=tervigon BUILD_ID=HTK75D BUILD_DISPLAY_ID=HTK75D BUILD_FINGERPRINT="motorola/tervigon/wingray:3.2.1/HTK75D/190830:user/release-keys" PRIVATE_BUILD_DESC="tervigon-user 3.2.1 HTK75D 190830 release-keys"

# Inherit common build.prop overrides
-include vendor/deodexed/products/common_versions.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL 
   
PRODUCT_PACKAGE_OVERLAYS += vendor/deodexed/overlay/wingray

PRODUCT_COPY_FILES +=  \
    vendor/deodexed/prebuilt/common/hdpi/bootanimation.zip:system/media/bootanimation.zip


