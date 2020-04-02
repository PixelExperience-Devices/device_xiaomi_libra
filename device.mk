DEVICE_PATH := device/xiaomi/libra
BOARD_PLATFORM := msm8992

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/libra/libra-vendor.mk)

# System properties
-include $(DEVICE_PATH)/system_prop.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-aosp

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/media/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/media/media_profiles_V1_0.xml:system/vendor/etc/media_profiles_V1_0.xml \
    $(DEVICE_PATH)/media/media_codecs.xml:system/vendor/etc/media_codecs.xml

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml \
    $(DEVICE_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    $(DEVICE_PATH)/audio/audio_platform_info_i2s.xml:system/vendor/etc/audio_platform_info_i2s.xml \
    $(DEVICE_PATH)/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/audio/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml  \
    $(DEVICE_PATH)/audio/mixer_paths_i2s.xml:system/vendor/etc/mixer_paths_i2s.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:system/vendor/etc/mixer_paths.xml \
    $(DEVICE_PATH)/audio/surround_sound_3mic/surround_sound_rec_AZ.cfg:system/vendor/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/aanc_tuning_mixer.txt:system/vendor/etc/aanc_tuning_mixer.txt \
    $(DEVICE_PATH)/audio/sound_trigger_mixer_paths.xml:system/vendor/etc/sound_trigger_mixer_paths.xml \
    $(DEVICE_PATH)/audio/sound_trigger_platform_info.xml:system/vendor/etc/sound_trigger_platform_info.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/vendor/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/vendor/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/vendor/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/vendor/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/vendor/etc/usb_audio_policy_configuration.xml 

# keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/atmel-maxtouch.kl:system/vendor/usr/keylayout/atmel-maxtouch.kl \
    $(DEVICE_PATH)/keylayout/atmel-maxtouch-edge.kl:system/vendor/usr/keylayout/atmel-maxtouch-edge.kl \
    $(DEVICE_PATH)/keylayout/ft5x46.kl:system/vendor/usr/keylayout/ft5x46.kl \
    $(DEVICE_PATH)/keylayout/msm8994-tomtom-snd-card_Button_Jack.kl:system/vendor/usr/keylayout/msm8994-tomtom-snd-card_Button_Jack.kl \
    $(DEVICE_PATH)/keylayout/gpio-keys.kl:system/vendor/usr/keylayout/gpio-keys.kl \
    $(DEVICE_PATH)/keylayout/synaptics_dsx_edge.kl:system/vendor/usr/keylayout/synaptics_dsx_edge.kl \
    $(DEVICE_PATH)/keylayout/synaptics_dsx.kl:system/vendor/usr/keylayout/synaptics_dsx.kl

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/vendor/etc/media_codecs_google_video.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/vendor/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/vendor/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/vendor/etc/permissions/android.hardware.camera.full.xml\
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/vendor/etc/permissions/android.hardware.camera.raw.xml\
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/vendor/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/vendor/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/vendor/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/vendor/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/vendor/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:system/vendor/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/vendor/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/vendor/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:system/vendor/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/vendor/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/vendor/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/vendor/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/vendor/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:system/vendor/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/vendor/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/vendor/etc/permissions/android.hardware.vulkan.version.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/vendor/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/vendor/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/vendor/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/vendor/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/vendor/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/vendor/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/vendor/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/vendor/etc/permissions/android.hardware.sensor.stepdetector.xml

#FEATURE_OPENGLES_EXTENSION_PACK support string config file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml

# APEX
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/ld.config.txt:system/etc/swcodec/ld.config.txt

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl \
    audio.a2dp.default \
    audio.primary.$(BOARD_PLATFORM) \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Bluetooth
PRODUCT_PACKAGES += \
    bdaddr_xiaomi \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl

# Connectivity Engine support (CNE)
PRODUCT_PACKAGES += \
    cneapiclient \
    com.quicinc.cne \
    libcnefeatureconfig \
    services-ext

# GPS
PRODUCT_PACKAGES += \
    gps.$(BOARD_PLATFORM) \
    flp.conf \
    gps.conf \
    izat.conf \
    lowi.conf \
    quipc.conf \
    sap.conf \
    xtwifi.conf
    
# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl

# GNSS HAL
PRODUCT_PACKAGES += \
    libshims_get_process_name \
    android.hardware.gnss@1.0-impl

# Graphics
PRODUCT_PACKAGES += \
    copybit.$(BOARD_PLATFORM) \
    gralloc.$(BOARD_PLATFORM) \
    hwcomposer.$(BOARD_PLATFORM) \
    memtrack.$(BOARD_PLATFORM) \
    liboverlay \
    libtinyxml \
    libgenlock \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.graphics.composer@2.1-impl

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Camera
PRODUCT_PACKAGES += \
    camera.$(BOARD_PLATFORM) \
    camera.device@1.0-impl \
    android.hardware.camera.provider@2.4-impl \
    libshim_atomic \
    libshim_camera \
    Snap

# EdgeGesture
PRODUCT_PACKAGES += \
    EdgeGesture

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/uinput-fpc.kl:system/vendor/usr/keylayout/uinput-fpc.kl \
    $(DEVICE_PATH)/configs/uinput-fpc.idc:system/vendor/usr/idc/uinput-fpc.idc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/vendor/etc/permissions/android.hardware.fingerprint.xml

# Keystore
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-service.libra

# IRQ
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sec_config:system/vendor/etc/sec_config

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_msm8994

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.mokee.livedisplay@2.0-service-legacymm

# OMX
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libdrmclearkeyplugin \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw

# Privapp Whitelist
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_msm8994
    
# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    rild_socket \
    libxml2

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.2-service-qti

# Seccomp
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    sensors.msm8992

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sensor_diag.cfg:system/etc/sensor_diag.cfg

# Telephony
PRODUCT_PACKAGES += \
    qti-telephony-common \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.mokee.trust@1.0-service

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service.mokee

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    ipacm \
    ipacm-diag \
    IPACM_cfg.xml \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    readmac \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/wifi/WCNSS_qcom_cfg.ini:system/vendor/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini \
    $(DEVICE_PATH)/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf

# Screen density
PRODUCT_AAPT_CONFIG := normal

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    ueventd.qcom.rc \
    init.qcom.post_boot.sh \
    init.fpc.rc \
    init.target.rc

