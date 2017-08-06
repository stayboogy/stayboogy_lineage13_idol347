# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/alcatel/idol347/setup-makefiles.sh

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),idol347)
ifeq ($(QCPATH),)

include $(CLEAR_VARS)
LOCAL_MODULE := com.qualcomm.location
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/priv-app/com.qualcomm.location/com.qualcomm.location.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := QtiTelephonyService
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/app/QtiTelephonyService/QtiTelephonyService.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE := CNEService
#LOCAL_MODULE_OWNER := alcatel
#LOCAL_SRC_FILES := proprietary/priv-app/CNEService/CNEService.apk
#LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_MODULE_CLASS := APPS
#LOCAL_CERTIFICATE := platform
#LOCAL_PRIVILEGED_MODULE := true
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := QtiTetherService
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/priv-app/QtiTetherService/QtiTetherService.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qcrilmsgtunnel
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/priv-app/qcrilmsgtunnel/qcrilmsgtunnel.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := shutdownlistener
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/app/shutdownlistener/shutdownlistener.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TimeService
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/app/TimeService/TimeService.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := atfwd
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/app/atfwd/atfwd.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := fastdormancy
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/app/fastdormancy/fastdormancy.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := colorservice
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/app/colorservice/colorservice.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qcnvitems
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/framework/qcnvitems.jar
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qcrilhook
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/framework/qcrilhook.jar
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ConnectivityExt
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/framework/ConnectivityExt.jar
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libloc_api_v02
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/lib/libloc_api_v02.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE := libloc_ds_api
#LOCAL_MODULE_OWNER := alcatel
#LOCAL_SRC_FILES := proprietary/lib/libloc_ds_api.so
#LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_SUFFIX := .so
#LOCAL_MODULE_CLASS := SHARED_LIBRARIES
#LOCAL_MODULE_PATH:= $(TARGET_OUT_SHARED_LIBRARIES)
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libtime_genoff
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libtime_genoff.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libtime_genoff.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_PATH_32 := $(2ND_TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MULTILIB := both
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS) 
#LOCAL_MODULE := WfdCommon
#LOCAL_MODULE_OWNER := alcatel
#LOCAL_SRC_FILES := proprietary/framework/WfdCommon.jar
#LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_SUFFIX := .jar
#LOCAL_MODULE_CLASS := JAVA_LIBRARIES
#LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)
#LOCAL_PROPRIETARY_MODULE := true
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qcmediaplayer
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/framework/qcmediaplayer.jar
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqct_resampler
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/vendor/lib/libqct_resampler.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE := tcmiface
#LOCAL_MODULE_OWNER := alcatel
#LOCAL_SRC_FILES := proprietary/framework/tcmiface.jar
#LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_SUFFIX := .jar
#LOCAL_MODULE_CLASS := JAVA_LIBRARIES
#LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)
#LOCAL_PROPRIETARY_MODULE := true
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libmm-abl
LOCAL_MODULE_OWNER := alcatel
LOCAL_SRC_FILES := proprietary/vendor/lib/libmm-abl.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib/egl && pushd $(PRODUCT_OUT)/system/vendor/lib > /dev/null && ln -s egl/libEGL_adreno.so libEGL_adreno.so && popd > /dev/null)
#$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib64/egl && pushd $(PRODUCT_OUT)/system/vendor/lib64 > /dev/null && ln -s egl/libEGL_adreno.so libEGL_adreno.so && popd > /dev/null)
#Link default_video chromatix to snapshot because of darkness issue
#$(shell pushd $(PRODUCT_OUT)/system/vendor/lib > /dev/null && ln -s libchromatix_s5k5e2_idol347_default_video.so libchromatix_s5k5e2_idol347_snapshot.so  && popd > /dev/null)
endif
endif

