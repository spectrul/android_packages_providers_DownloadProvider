LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)


LOCAL_PACKAGE_NAME := DownloadProvider
LOCAL_CERTIFICATE := media
LOCAL_STATIC_JAVA_LIBRARIES := guava
LOCAL_STATIC_JAVA_LIBRARIES += org.cyanogenmod.support

include $(BUILD_PACKAGE)

# build UI + tests
include $(call all-makefiles-under,$(LOCAL_PATH))
