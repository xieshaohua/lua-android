# Copyright 2016 Phicomm Power Management Team

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := lapi.c lcode.c lctype.c ldebug.c ldo.c ldump.c lfunc.c \
                   lgc.c llex.c lmem.c lobject.c lopcodes.c lparser.c lstate.c \
                   lstring.c ltable.c ltm.c lundump.c lvm.c lzio.c lauxlib.c lbaselib.c \
                   lbitlib.c lcorolib.c ldblib.c liolib.c lmathlib.c loslib.c lstrlib.c \
                   ltablib.c lutf8lib.c loadlib.c linit.c lua.c

LOCAL_MODULE := lua

#LOCAL_CFLAGS := -Werror

LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := true

LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_SBIN_UNSTRIPPED)

LOCAL_STATIC_LIBRARIES := libutils libstdc++ libcutils liblog libm libc

include $(BUILD_EXECUTABLE)
