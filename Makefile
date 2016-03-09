ARCHS = armv7 arm64
include theos/makefiles/common.mk
export ADDITIONAL_LDFLAGS = -Wl,-segalign,4000

TWEAK_NAME = TwitterNewsEnabler
TwitterNewsEnabler_FILES = Tweak.xm
TwitterNewsEnabler_FRAMEWORKS = UIKit Foundation
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Twitter"
SUBPROJECTS += twitternews
include $(THEOS_MAKE_PATH)/aggregate.mk
