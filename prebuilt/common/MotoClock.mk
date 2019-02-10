# Permissions
PRODUCT_COPY_FILES += \
    vendor/omega/prebuilt/common/etc/permissions/com.motorola.timeweatherwidget.library.xml:system/etc/permissions/com.motorola.timeweatherwidget.library.xml

# Framework JAR file
PRODUCT_COPY_FILES += \
    vendor/omega/prebuilt/common/framework/com.motorola.timeweatherwidget.library.jar:system/framework/com.motorola.timeweatherwidget.library.jar

# Inherit APK
include $(CLEAR_VARS)
LOCAL_MODULE := TimeWeather
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

PRODUCT_PACKAGES += \
    TimeWeather
