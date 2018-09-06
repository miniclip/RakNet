LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := raknet_static

LOCAL_MODULE_FILENAME := libraknet

MY_PREFIX_RAKNETSRC := $(LOCAL_PATH)/Source/
MY_PREFIX_MINIUPNPC := $(LOCAL_PATH)/DependentExtensions/miniupnpc-1.5/

MY_SOURCES_CPP := $(wildcard $(MY_PREFIX_RAKNETSRC)*.cpp)
MY_SOURCES_C := $(wildcard $(MY_PREFIX_RAKNETSRC)*.c)
MY_MINIUPNPC_SOURCES_C := $(wildcard $(MY_PREFIX_MINIUPNPC)*.c)

LOCAL_SRC_FILES := $(MY_SOURCES_CPP:$(MY_PREFIX_RAKNETSRC)%=Source/%) \
                   $(MY_SOURCES_C:$(MY_PREFIX_RAKNETSRC)%=Source/%) \
                   $(MY_MINIUPNPC_SOURCES_C:$(MY_PREFIX_MINIUPNPC)%=DependentExtensions/miniupnpc-1.5/%) 

LOCAL_EXPORT_C_INCLUDES := $(MY_PREFIX_RAKNETSRC) \
                           $(MY_PREFIX_MINIUPNPC)

LOCAL_C_INCLUDES := $(MY_PREFIX_RAKNETSRC) \
                    $(MY_PREFIX_MINIUPNPC)

# Not sure the difference… -HM include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)