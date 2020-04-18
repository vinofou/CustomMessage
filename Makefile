INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CustomMessage

CustomMessage_FILES = Tweak.x
CustomMessage_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
