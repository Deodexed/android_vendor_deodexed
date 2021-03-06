# Generic product
PRODUCT_NAME := deodexed
PRODUCT_BRAND := deodexed
PRODUCT_DEVICE := generic

KERNEL_MODULES_DIR:=/system/lib/modules

PRODUCT_PACKAGES += \
    Basic \
    Camera \
    FileManager \
    Galaxy4 \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    Superuser \
    Superuser.apk \
    su

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/deodexed/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.dataroaming=false \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.google.locationfeatures=1 \
    ro.config.ringtone=Growl.ogg \
    ro.config.notification_sound=Upsilon.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=240

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/deodexed/proprietary/common/etc/resolv.conf:system/etc/resolv.conf 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

