# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/deodexed/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := deodexed_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_ID=ICL53F BUILD_FINGERPRINT=google/yakju/maguro:4.0.2/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.2 ICL53F 235179 release-keys" BUILD_NUMBER=235179

# Inherit common build.prop overrides
-include vendor/deodexed/products/common_versions.mk

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/deodexed/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/deodexed/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/deodexed/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/deodexed/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/deodexed/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/deodexed/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/deodexed/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/deodexed/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit Face lock security blobs
-include vendor/deodexed/products/common_facelock.mk

# Inherit drm blobs
-include vendor/deodexed/products/common_drm.mk

