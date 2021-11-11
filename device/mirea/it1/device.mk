PRODUCT_DEVICE := htc_m8dug
PRODUCT_NAME := htc_europe
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One_M8 dual sim
PRODUCT_MANUFACTURER := HTC

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
$(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
$(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini

PRODUCT_PACKAGES += \
	PRODUCT_PACKAGES += \
	librs_jni \
	liba2dp \
	lights.tegra \
	com.android.future.usb.accessory \
	camera.tegra \
	libpkip \
	libaudioutils \
	tinyplay \
	tinycap \
	tinymix \
	audio.primary.tegra \
	audio.a2dp.default \
	FolioParts \
	wmiconfig

PRODUCT_PROPERTY_OVERRIDES := \
	ro.product.first_api_level=25

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \

# Permissions (HTC)
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/permissions/com.htc.sensor.edgesense.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.edgesense.xml \
$(LOCAL_PATH)/configs/permissions/com.htc.sensor.hallsensor.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.hallsensor.xml \
$(LOCAL_PATH)/configs/permissions/com.htc.sensor.sensorhub.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.sensorhub.xml \
$(LOCAL_PATH)/configs/permissions/com.htc.software.market.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.software.market.xml

# Resolution settings
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi