
THEOS_DEVICE_IP = 192.168.1.11

ARCHS = arm64 arm64e

TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = nolabels

nolabel_FILES = Tweak.xm
nolabel_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
