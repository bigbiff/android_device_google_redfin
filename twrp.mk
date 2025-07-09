LOCAL_PATH := device/google/redfin

include vendor/google/redfin/BoardConfigVendor.mk

BOARD_KERNEL_IMAGE_NAME := Image.lz4
TW_INCLUDE_CRYPTO := false
BOARD_USES_QCOM_FBE_DECRYPTION := false
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
#PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION :=  14
#PLATFORM_SECURITY_PATCH := 2127-12-31
BOOT_SECURITY_PATCH := 2023-11-05
VENDOR_SECURITY_PATCH := 2023-11-05
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
PRODUCT_ENFORCE_VINTF_MANIFEST := true
TW_LOAD_VENDOR_MODULES := $(shell echo \"$(shell ls $(LOCAL_PATH)/redfin/recovery/root/vendor/lib/modules/1.1)\")
TW_LOAD_VENDOR_BOOT_MODULES := true

TARGET_RECOVERY_TWRP_LIB := \
    librecovery_twrp_redfin \
    libnos_citadel_for_recovery \
    libnos_for_recovery \
    liblog \
    libbootloader_message \
    libfstab \
    libext4_utils

# TWRP
TW_THEME := portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_DEFAULT_BRIGHTNESS := "80"
TW_INCLUDE_CRYPTO := false
AB_OTA_UPDATER := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_RECOVERY_ADDITIONAL_RELINK_BINARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/system/bin/strace
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/system/lib64/android.hardware.authsecret@1.0.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/system/lib64/android.hardware.oemlock@1.0.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/vendor/lib64/libnos.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/vendor/lib64/libnosprotos.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/vendor/lib64/pixelatoms-cpp.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/vendor/lib64/libnos_datagram_citadel.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/vendor/lib64/libnos_client_citadel.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/vendor/lib64/nos_app_avb.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/vendor/lib64/nos_app_keymaster.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/vendor/lib64/nos_app_weaver.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/system/lib64/pixelpowerstats_provider_aidl_interface-cpp.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += out/target/product/$(PRODUCT_HARDWARE)/vendor/lib/hw/bootctrl.msmnile.so
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_EXCLUDE_MTP := true
TW_USE_TOOLBOX := true
TW_NO_HAPTICS := true
TW_INCLUDE_REPACKTOOLS := true
#TW_EXTRA_LANGUAGES := true
TW_INCLUDE_RESETPROP := true
TW_USE_FSCRYPT_POLICY := 1
TW_OVERRIDE_SYSTEM_PROPS := \
	    "ro.build.product;ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental;ro.product.name=ro.product.system.name"
TW_EXCLUDE_APEX := true

#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/task_profiles.json:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/task_profiles/task_profiles_30.json
