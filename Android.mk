# Set up the following environment variables
# NODE_ROOT: location of the node root directory (for include files)
# ANODE_ROOT: location of the anode root directory (for the libjninode binary)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := debuglog 

LOCAL_CFLAGS := \
	-D__POSIX__ \
	-DBUILDING_NODE_EXTENSION \
	-include sys/select.h

LOCAL_CPPFLAGS :=

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	$(NODE_ROOT)/src \
	$(NODE_ROOT)/deps/v8/include \
	$(NODE_ROOT)/deps/uv/include

LOCAL_LDLIBS := \
	$(ANODE_ROOT)/libs/armeabi/libjninode.so \
	-llog

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
	src/androidlog.cc

LOCAL_STATIC_LIBRARIES :=

LOCAL_SHARED_LIBRARIES :=

# Do not edit this line.
include $(ANODE_ROOT)/sdk/addon/build-node-addon.mk
