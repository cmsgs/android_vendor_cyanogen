# Inherit device configuration for Galaxy Tab.
$(call inherit-product, device/samsung/galaxytab/device_galaxytab.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_galaxytab
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := galaxytab
PRODUCT_MODEL := GT-P1000
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRH78 BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=google/soju/crespo:2.3.1/GRH78/85442:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.1 GRH78 85442 release-keys"

# Euro Tab
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P1000 BUILD_ID=FROYO BUILD_DISPLAY_ID=FROYO.XXJK5 BUILD_FINGERPRINT=samsung/GT-P1000/GT-P1000/GT-P1000:2.2/FROYO/XXJK5:user/release-keys PRIVATE_BUILD_DESC="GT-P1000-user 2.2 FROYO XXJK5 release-keys"

# for ATT Tab
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I987 BUILD_ID=FROYO BUILD_DISPLAY_ID=FROYO.UCJK1 BUILD_FINGERPRINT=samsung/SGH-I987/SGH-I987/SGH-I987:2.2/FROYO/UCJK1:user/release-keys PRIVATE_BUILD_DESC="SGH-I987-user 2.2 FROYO UCJK1 release-keys"

# for TMO Tab
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T849 BUILD_ID=FROYO BUILD_DISPLAY_ID=FROYO.UVJJB BUILD_FINGERPRINT=samsung/SGH-T849/SGH-T849/SGH-T849:2.2/FROYO/UVJJB:user/release-keys PRIVATE_BUILD_DESC="SGH-T849-user 2.2 FROYO UVJJB release-keys"

# Include FM app
#PRODUCT_PACKAGES += FM

# Extra Galaxy Tab overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/galaxytab

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-galaxytab
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=p1_android_rfs_eur_cm7_defconfig
PRODUCT_SPECIFIC_DEFINES += TARGETARCH=arm

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-GalaxyTab
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-BETA0-GalaxyTab
endif

#
# Copy Galaxy Tab specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip