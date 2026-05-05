ARCHS = arm64

TARGET = iphone:clang:latest:11.0

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FLEXing

FLEXing_FILES = Tweak.xm SpringBoard.xm

FLEXing_CFLAGS = -fobjc-arc -w

include $(THEOS_MAKE_PATH)/tweak.mk

before-stage::

	find . -name ".DS_Store" -delete

print-%  : ; @echo $* = $($($*))
